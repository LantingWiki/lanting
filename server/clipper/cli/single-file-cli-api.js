/* eslint-disable global-require */
/* eslint-disable no-shadow */
/* eslint-disable prefer-destructuring */
/*
 * Copyright 2010-2020 Gildas Lormeau
 * contact : gildas.lormeau <at> gmail.com
 *
 * This file is part of SingleFile.
 *
 *   The code in this file is free software: you can redistribute it and/or
 *   modify it under the terms of the GNU Affero General Public License
 *   (GNU AGPL) as published by the Free Software Foundation, either version 3
 *   of the License, or (at your option) any later version.
 *
 *   The code in this file is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero
 *   General Public License for more details.
 *
 *   As additional permission under GNU AGPL version 3 section 7, you may
 *   distribute UNMODIFIED VERSIONS OF THIS file without the copy of the GNU
 *   AGPL normally required by section 4, provided you include this license
 *   notice and a URL through which recipients can access the Corresponding
 *   Source.
 */

const fs = require('fs');
const path = require('path');

const VALID_URL_TEST = /^(https?|file):\/\//;

const STATE_PROCESSING = 'processing';
const STATE_PROCESSED = 'processed';

const backEnds = {
  jsdom: './back-ends/jsdom.js',
  puppeteer: './back-ends/puppeteer.js',
  'puppeteer-firefox': './back-ends/puppeteer-firefox.js',
  'webdriver-chromium': './back-ends/webdriver-chromium.js',
  'webdriver-gecko': './back-ends/webdriver-gecko.js',
  'playwright-firefox': './back-ends/playwright-firefox.js',
  'playwright-chromium': './back-ends/playwright-chromium.js',
};

let backend;
let tasks = [];
let maxParallelWorkers = 8;
let sessionFilename;
module.exports = initialize;

async function initialize(options) {
  maxParallelWorkers = options.maxParallelWorkers;
  // eslint-disable-next-line import/no-dynamic-require
  backend = require(backEnds[options.backEnd]);
  await backend.initialize(options);
  if (options.crawlSyncSession || options.crawlLoadSession) {
    try {
      tasks = JSON.parse(
        fs.readFileSync(options.crawlSyncSession || options.crawlLoadSession).toString(),
      );
    } catch (error) {
      if (options.crawlLoadSession) {
        throw error;
      }
    }
  }
  if (options.crawlSyncSession || options.crawlSaveSession) {
    sessionFilename = options.crawlSyncSession || options.crawlSaveSession;
  }
  return {
    capture: (urls) => capture(urls, options),
    finish: () => finish(options),
    VALID_URL_TEST,
  };
}

async function capture(urls, options) {
  let newTasks;
  const taskUrls = tasks.map((task) => task.url);
  newTasks = urls.map((url) => {
    options.lantingId += 1;
    return createTask(url, options);
  });
  newTasks = newTasks.filter((task) => task && !taskUrls.includes(task.url));
  if (newTasks.length) {
    tasks = tasks.concat(newTasks);
    saveTasks();
  }
  await runTasks();
}

async function finish(options) {
  const promiseTasks = tasks.map((task) => task.promise);
  await Promise.all(promiseTasks);
  if (options.crawlReplaceURLs) {
    tasks.forEach((task) => {
      try {
        let pageContent = fs.readFileSync(task.filename).toString();
        tasks.forEach((otherTask) => {
          if (otherTask.filename) {
            pageContent = pageContent.replace(
              new RegExp(escapeRegExp(`"${otherTask.originalUrl}"`), 'gi'),
              `"${otherTask.filename}"`,
            );
            pageContent = pageContent.replace(
              new RegExp(escapeRegExp(`'${otherTask.originalUrl}'`), 'gi'),
              `'${otherTask.filename}'`,
            );
            const filename = otherTask.filename.replace(/ /g, '%20');
            pageContent = pageContent.replace(
              new RegExp(escapeRegExp(`=${otherTask.originalUrl} `), 'gi'),
              `=${filename} `,
            );
            pageContent = pageContent.replace(
              new RegExp(escapeRegExp(`=${otherTask.originalUrl}>`), 'gi'),
              `=${filename}>`,
            );
          }
        });
        fs.writeFileSync(task.filename, pageContent);
      } catch (error) {
        // ignored
      }
    });
  }
  if (!options.browserDebug) {
    backend.closeBrowser();
  }
}

async function runTasks() {
  const availableTasks = tasks.filter((task) => !task.status).length;
  const processingTasks = tasks.filter((task) => task.status === STATE_PROCESSING).length;
  const promisesTasks = [];
  for (
    let workerIndex = 0;
    workerIndex < Math.min(availableTasks, maxParallelWorkers - processingTasks);
    workerIndex++
  ) {
    promisesTasks.push(runNextTask());
  }
  return Promise.all(promisesTasks);
}

async function runNextTask() {
  // eslint-disable-next-line no-shadow
  const task = tasks.find((task) => !task.status);
  if (task) {
    const { options } = task;
    const taskOptions = JSON.parse(JSON.stringify(options));
    taskOptions.url = task.url;
    task.status = STATE_PROCESSING;
    saveTasks();
    task.promise = capturePage(taskOptions);
    const pageData = await task.promise;
    task.status = STATE_PROCESSED;
    if (pageData) {
      task.filename = pageData.filename;
      if (options.crawlLinks && testMaxDepth(task)) {
        const newTasks = pageData.links
          .map((urlLink) => createTask(urlLink, options, task, tasks[0]))
          // eslint-disable-next-line no-shadow
          .filter(
            (task) =>
              task &&
              testMaxDepth(task) &&
              !tasks.find((otherTask) => otherTask.url === task.url) &&
              (!options.crawlInnerLinksOnly || task.isInnerLink),
          );
        tasks.splice(tasks.length, 0, ...newTasks);
      }
    }
    saveTasks();
    await runTasks();
  }
}

function testMaxDepth(task) {
  const { options } = task;
  return (
    (options.crawlMaxDepth === 0 || task.depth <= options.crawlMaxDepth) &&
    (options.crawlExternalLinksMaxDepth === 0 ||
      task.externalLinkDepth < options.crawlExternalLinksMaxDepth)
  );
}

function createTask(url, options, parentTask, rootTask) {
  url = parentTask
    ? rewriteURL(url, options.crawlRemoveURLFragment, options.crawlRewriteRules)
    : url;
  if (VALID_URL_TEST.test(url)) {
    const isInnerLink = rootTask && url.startsWith(getHostURL(rootTask.url));
    return {
      url,
      isInnerLink,
      originalUrl: url,
      depth: parentTask ? parentTask.depth + 1 : 0,
      // eslint-disable-next-line no-nested-ternary
      externalLinkDepth: isInnerLink ? -1 : parentTask ? parentTask.externalLinkDepth + 1 : -1,
      options,
      lantingId: options.lantingId,
      articleinfo: options.articleinfo,
    };
  }
  return null;
}

function saveTasks() {
  if (sessionFilename) {
    fs.writeFileSync(
      sessionFilename,
      JSON.stringify(
        tasks.map((task) => ({
          ...task,
          status: task.status === STATE_PROCESSING ? undefined : task.status,
          promise: undefined,
          options: task.status && task.status === STATE_PROCESSED ? undefined : task.options,
        })),
      ),
    );
  }
}

function rewriteURL(url, crawlRemoveURLFragment, crawlRewriteRules) {
  url = url.trim();
  if (crawlRemoveURLFragment) {
    url = url.replace(/^(.*?)#.*$/, '$1');
  }
  crawlRewriteRules.forEach((rewriteRule) => {
    const parts = rewriteRule.trim().split(/ +/);
    if (parts.length) {
      url = url.replace(new RegExp(parts[0]), parts[1] || '').trim();
    }
  });
  return url;
}

function getHostURL(url) {
  url = new URL(url);
  return `${url.protocol}//${url.username ? `${url.username + (url.password || '')}@` : ''}${
    url.hostname
  }`;
}

function fillArticleInfo(title, articleinfo) {
  return `# title
${title || 'TODO'}

# author
${articleinfo.author || 'TODO'}

# publisher
${articleinfo.publisher || 'TODO'}

# date
${articleinfo.date || 'TODO'}

# chapter
TODO

# tag
TODO

# remarks
TODO
`;
}

async function capturePage(options) {
  const archives = '/Users/wang.boyang/Projects/mine/lanting/archives';
  let prefix = '';
  if (options.lantingId) {
    prefix = `${options.lantingId}-`;
  }

  try {
    const pageData = await backend.getPageData(options);
    let filename;
    if (options.filenameTemplate && pageData.filename) {
      filename = path.join(archives, 'origs', `${options.lantingId}.html`);
      fs.writeFileSync(filename, pageData.content);
      const commentPathname = path.join(archives, 'comments', `${prefix}${pageData.filename}.md`);
      console.log('XXXTEMP task options', options);
      fs.writeFileSync(
        commentPathname,
        fillArticleInfo(
          pageData.filename,
          options.articleinfo ? JSON.parse(options.articleinfo) : {},
        ),
      );
      console.log('XXXTEMP DONE');
    } else {
      console.log('XXXTEMP no filename'); // eslint-disable-line no-console
    }
    return pageData;
  } catch (error) {
    console.log('XXXTEMP ERROR', error);
    const message = `URL: ${options.url}\nStack: ${error.stack}\n`;
    if (options.errorFile) {
      fs.writeFileSync(options.errorFile, message, { flag: 'a' });
    } else {
      console.error(message); // eslint-disable-line no-console
    }
  }
  return null;
}

function getFilename(filename, index = 1) {
  let newFilename = filename;
  if (index > 1) {
    const regExpMatchExtension = /(\.[^.]+)$/;
    const matchExtension = newFilename.match(regExpMatchExtension);
    if (matchExtension && matchExtension[1]) {
      newFilename = newFilename.replace(regExpMatchExtension, ` - ${index}${matchExtension[1]}`);
    } else {
      newFilename += ` - ${index}`;
    }
  }
  if (fs.existsSync(newFilename)) {
    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    return getFilename(filename, index + 1);
  }
  return newFilename;
}

function escapeRegExp(string) {
  return string.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
}
