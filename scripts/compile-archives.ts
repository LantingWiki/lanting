/* eslint-disable no-console */
/* eslint-disable no-unused-vars */
/* eslint-disable @typescript-eslint/no-unused-vars */
import * as fs from 'fs';
import { dirname } from 'path';
import { fileURLToPath } from 'url';
import OSS from 'ali-oss';
// eslint-disable-next-line import/no-extraneous-dependencies
import mysql, { Connection } from 'mysql';
import { execSync } from 'child_process';
import axios from 'axios';
import { createHmac } from 'crypto';
import { Archive, Archives } from './data';
import secrets from './secrets.json';
import { exec } from './migrate-backend2';

/**
 * One-liner constants
 */
// eslint-disable-next-line no-underscore-dangle,@typescript-eslint/naming-convention
const __dirname = dirname(fileURLToPath(import.meta.url));
const ARCHIVE_DIR = `${__dirname}/../archives`;
const localOrigFiles = fs.readdirSync(`${ARCHIVE_DIR}/origs`);
let currentOrigOssFiles: string[] = [];
let currentOrigDb: any[] = [];
const commentsFiles = fs.readdirSync(`${ARCHIVE_DIR}/comments`);
const connection: Connection = initConnection();
const ossClient = new OSS({
  region: 'oss-cn-beijing',
  accessKeyId: secrets.oss.accessKeyId,
  accessKeySecret: secrets.oss.accessKeySecret,
  bucket: 'lanting-public-20230707-1',
});
/**
 * End of one-liner constants
 */

async function main() {
  await initOrigOssFiles();
  await newMasterSync([]);
  
  await compileArchives();

  // boyang: this was used to remove an archive
  // await findCreationDate();
  // await origsMap();
  // await giveNotationsForNoOrigArchives();
  // await removeArchive([10838]);
}
main();

async function initOrigOssFiles() {
  currentOrigOssFiles = [];

  // I need to iterate through all the files in the OSS bucket. Each time it only return 1000 files.
  // I need to keep track of the marker and use it to get the next 1000 files until it returns nothing.
  let marker: string | undefined;

  do {
    // eslint-disable-next-line no-await-in-loop
    const result = await ossClient.list({
      prefix: 'archives/origs/',
      marker,
      'max-keys': 1000,
    }, {});

    currentOrigOssFiles = currentOrigOssFiles.concat(result.objects.map((o) => o.name.replace(/^archives\/origs\//, '')));
    marker = result.nextMarker;
  } while (marker);

  console.log('currentOrigFiles OSS', currentOrigOssFiles.length);
}
async function initCurrentOrigDbData() {
  currentOrigDb = await new Promise((resolve, reject) => {
    connection.query(`SELECT * from archive_origs`, (error, results) => {
      if (error) {
        reject(error);
      } else {
        resolve(results);
      }
    });
  });
}
function initConnection() {
  return mysql.createConnection({
    host: 'lanting.wiki',
    user: 'root',
    password: secrets.db.password,
    database: 'lanting',
    connectTimeout: 60000,
    multipleStatements: true,
  });
}
function endConnection() {
  // Closes the connection to the database.
  connection.end();
}

function setField(archive: Archive, field: string, fileContent: string, archives: Archives) {
  const regexArr = toFieldRegex(field).exec(fileContent);
  if (regexArr && regexArr[1]) {
    const fieldVal = getFieldFromFieldLine(field, regexArr[1]);
    archive[field] = fieldVal;
    fileContent = fileContent.replace(regexArr[0], '');

    updateFreqMap(field, fieldVal, archives);
  } else {
    console.log('Failed to get field: ', field, archive);
  }
  return fileContent;
}

function updateFreqMap(field: string, fieldVal: string | string[], archives: Archives) {
  if (['author', 'publisher', 'date', 'tag'].includes(field)) {
    if (typeof fieldVal === 'string') {
      archives.fieldFreqMap[field][fieldVal] = (archives.fieldFreqMap[field][fieldVal] || 0) + 1;
    } else {
      (fieldVal as string[]).forEach((v) => {
        archives.fieldFreqMap[field][v] = (archives.fieldFreqMap[field][v] || 0) + 1;
      });
    }
  }
}

function getFieldFromFieldLine(field: string, fieldLine: string) {
  switch (field) {
    case 'title':
    case 'publisher':
    case 'date':
    case 'chapter':
      return fieldLine;
    case 'author':
    case 'tag':
      return fieldLine
        .split(',')
        .map((s) => s.trim())
        .sort();
    default:
      return fieldLine;
  }
}

function toFieldRegex(field: string): RegExp {
  return new RegExp(`# ${field}\n(.*?)\n\n`);
}

function getIdFromCommentFilename(f: string) {
  return f.substring(0, f.indexOf('-'));
}

async function origsMap() {
  const archives = commentsFiles.map((f) => {
    const archive = new Archive();
    archive.id = getIdFromCommentFilename(f);

    const foundOrigs = currentOrigOssFiles.filter((orig) => {
      const parts = orig.split('.');
      let id;
      if (parts[0].includes('-')) {
        id = +parts[0].split('-')[0];
      } else {
        id = +parts[0];
      }
      return id === +archive.id;
    });
    archive.origs = foundOrigs;
    return archive;
  });
  // In essense, this is a 3-party diff. But we don't do all 3 pairs of comparisons
  // The 3 parties are:
  // local comments === git comments === DB comments
  // DB origs
  // OSS origs

  console.log('archives length', archives.length);

  const inCommentsButNotInDbOrig = archives.reduce((prev: string[], cur) => {
    const found = currentOrigDb.find((a) => a.archive_id === +cur.id);
    if (!found) {
      prev.push(cur.id);
    }
    return prev;
  }, []);
  console.log('in comments but not in db', inCommentsButNotInDbOrig);

  // const inCommentsButNotInOssOrig = archives.reduce((prev: string[], cur) => {
  //   const found = currentOrigFiles.find(o => o.split('.')[0] === cur.id);
  //   if (!found) {
  //     prev.push(cur.id);
  //   }
  //   return prev;
  // }, []);
  // console.log("XXX in comments but not in oss", inCommentsButNotInOssOrig);

  // const noOrig = archives.filter(a => (a.origs || []).length === 0).map(a => a.id);
  const noComment = currentOrigDb.filter((o) => !archives.find((a) => +a.id === o.archive_id));

  // console.log('XXXTEMP db origs', currentOrigDb);
  console.log('in db but noComment', noComment);
}

async function giveNotationsForNoOrigArchives() {
  // await Promise.all(['100', '10050', '10089', '10090', '101', '102', '103', '104',].map(async (id) => {
  //   return new Promise((resolve, reject) => {
  //     connection.query(
  //       `INSERT IGNORE INTO archive_origs (archive_id, type, orig_url, filename, oss_prefix)
  //       values (?, 'book', 'about:blank#', ?, 'about:blank#')`,
  //       [id, `${id}`],
  //       (error, results) => {
  //         if (error) {
  //           reject(error);
  //         } else {
  //           resolve(results)
  //         }
  //       }
  //     );
  //   });
  // }));

  // currentOrigFiles.forEach(async (id) => {
  await Promise.all(
    currentOrigOssFiles.map(async (id) => {
      // prepare content from oss
      const idParts = parseOrigFilename(id);
      if (!idParts) {
        console.log('skip', id);
        return;
      }
      const origFile = await getOrigContentFromOss(
        `https://lanting-public-20230707-1.oss-cn-beijing.aliyuncs.com/archives/origs/${id}`,
      );
      // invoke to record to DB
      await origFileRecordToDb(id, origFile);
    }),
  );
}

function createSha256(content: string) {
  return createHmac('sha256', '').update(content).digest('hex');
}

async function getOrigContentFromOss(url: string): Promise<string> {
  const res = await axios.get(url);
  const data = await res.data;
  return data;
}

function getOrigUrlFromFile(content: string) {
  const searchArea: string = content.slice(0, 6 * 1024);
  const groups = searchArea.match(/Page saved with SingleFile\s+url: ([^\s]+)\s+/);
  return groups ? groups[1] : 'about:blank#';
}

function parseOrigFilename(filename: string) {
  if (!/^[0-9]+(-[0-9]+)?\.[0-9a-zA-Z]+$/.test(filename)) {
    return null;
  }
  const suffix = filename.substring(filename.lastIndexOf('.') + 1);
  if (!filename.includes('-')) {
    const idParts = [filename.substring(0, filename.indexOf('.')), null, suffix];
    if (!idParts || !idParts[0] || idParts[0] === '' || !/[0-9]+/.test(idParts[0])) {
      return null;
    }
    return idParts;
  }
  const idParts = filename.split(/[.-]+/);
  if (!idParts || !idParts[0] || idParts[0] === '' || !/[0-9]+/.test(idParts[0])) {
    return null;
  }
  return idParts;
}

/**
 * What do we do here?
 * Let's do one small step first: dump mysql data into archives.json
 *
 * We don't need that many forms. We need comments on github. We need mysql tables
 *
 * Indeed, archives.json should come not from github data, but mysql tables (point of truth). It's not a problem if we still persist it and upload to OSS
 *
 * The source and direction of syncing matters
 *
 * MySQL to archives.json
 *
 * 1. Figure out what are the archives that needs to be synced. By default just changed files in git change list. But it can be specified
 * 1.1 use auto detect
 *
 * 2. For these files, do:
 * 2.1 lastly, commit comment files and push
 * 2.2 comments files (everything) record to DB
 * [x] 2.3 origs files to OSS
 * [x] 2.4 origs files to DB
 *
 * 3. Do complete archives.json, and upload
 */
async function newMasterSync(specifiedIds: number[]) {
  const changedFiles = findChangedFiles().concat(
    specifiedIds.map((id) => findCorrespondingCommentFiles(id)),
  );
  console.log('changedFiles: ', changedFiles);
  const changedIds = findChangedIds(changedFiles);
  console.log('changedIds: ', changedIds);

  const deletedFiles = findDeletedFiles();
  await removeArchive(findChangedIds(deletedFiles));

  let involvedOrigFiles: string[] = [];
  // for each ID, orig handling
  await Promise.all(
    changedIds.map(async (id) => {
      // orig handlings
      const origFilesForThisId = localOrigFiles.filter((f) =>
        new RegExp(`^${id}(-[0-9]+)?.[0-9a-zA-Z]+$`).test(f),
      );
      console.log('origFilesForThisId to put: ', origFilesForThisId);
      involvedOrigFiles = involvedOrigFiles.concat(origFilesForThisId);
      await Promise.all(
        origFilesForThisId.map(async (o) => {
          const filename = `archives/origs/${o}`;
          await origFileUploadToOss(filename);
          const content = fs.readFileSync(filename, 'utf-8');
          // await origFileRecordToDb(o, content);
        }),
      );
    }),
  );
  // comment handling
  const individualArchives = await compileArchives(false, changedFiles, involvedOrigFiles);
  // exec(individualArchives);
}

function findDeletedFiles() {
  return `${execSync(`git status --porcelain -- ./archives`)}`
    .split('\n')
    .filter((a) => a && a.length > 0)
    .filter((f) => /^\s*D archives\/comments\//.test(f))
    .map((f) => f.replace(/^\s*D archives\/comments\//, '').replace(/"/g, ''));
}

function findChangedFiles() {
  return `${execSync(`git status --porcelain -- ./archives`)}`
    .split('\n')
    .filter((f) => /^\s*(\?\?|M) archives\/comments\//.test(f))
    .map((f) =>
      f
        .replace(/^\s*\?\? archives\/comments\//, '')
        .replace(/^\s*M archives\/comments\//, '')
        .replace(/"/g, ''),
    )
    .filter((a) => a && a.length > 0);
}

function findCorrespondingCommentFiles(id: number) {
  return commentsFiles.find((f) => new RegExp(`^${id}-`).test(f)) || '';
}

function findChangedIds(changedFiles: string[]): number[] {
  return changedFiles
    .map((f) => {
      const matches = /([0-9]+)-/.exec(f);
      if (!matches) {
        console.log('error wrong archive id format: ', f);
        return -1;
      }
      return +matches![1];
    })
    .filter((a) => a !== -1);
}

async function origFileUploadToOss(filename: string) {
  await ossClient.put(filename, filename, { timeout: 600000 });
  console.log('Done put file to oss', filename);
}

async function origFileRecordToDb(shortFilename: string, content: string) {
  const idParts = parseOrigFilename(shortFilename);
  if (!idParts) {
    console.log('skip', shortFilename);
    return;
  }
  const sha256 = createSha256(content);
  let type: string;
  let origUrl: string;
  const ossPrefix = 'https://lanting-public-20230707-1.oss-cn-beijing.aliyuncs.com/archives/origs/';
  if (idParts[2] !== 'html') {
    origUrl = 'about:blank#';
    type = 'document';
  } else {
    origUrl = getOrigUrlFromFile(content);
    type = 'article';
  }
  await new Promise((resolve, reject) => {
    connection.query(
      `REPLACE INTO archive_origs (archive_id, type, orig_url, filename, oss_prefix, sha256)
      values (?, ?, ?, ?, ?, ?)`,
      [idParts[0], type, origUrl, `${shortFilename}`, ossPrefix, sha256],
      (error, results) => {
        if (error) {
          reject(error);
        } else {
          console.log('Done record to DB: ', shortFilename);
          resolve(results);
        }
      },
    );
  });
}

async function compileArchives(
  isCompleteTask: boolean = true,
  todoCommentsFiles: string[] = [],
  todoOrigsFiles: string[] = [],
) {
  const compiledArchives = new Archives();
  if (isCompleteTask) {
    todoCommentsFiles = commentsFiles;
    await initOrigOssFiles();
    todoOrigsFiles = currentOrigOssFiles;
    console.log('Comments & origs count: ', todoCommentsFiles.length, todoOrigsFiles.length);
  } else {
    console.log('Doing individual sync. involved archives: ', todoCommentsFiles, todoOrigsFiles);
  }

  const archives: Archive[] = todoCommentsFiles.map((f) => {
    const archive = new Archive();
    archive.id = getIdFromCommentFilename(f);

    let fileContent: string = fs.readFileSync(`${ARCHIVE_DIR}/comments/${f}`, 'utf-8');

    ['title', 'author', 'publisher', 'date', 'chapter', 'tag'].forEach((field) => {
      fileContent = setField(archive, field, fileContent, compiledArchives);
    });
    archive.remarks = fileContent.replace('# remarks', '');

    const foundOrigs = todoOrigsFiles.filter((orig) => {
      const parts = orig.split('.');
      let id;
      if (parts[0].includes('-')) {
        id = +parts[0].split('-')[0];
      } else {
        id = +parts[0];
      }
      return id === +archive.id;
    });
    archive.origs = foundOrigs;

    return archive;
  });

  compiledArchives.archives = {};
  archives.forEach((a) => {
    compiledArchives.archives[a.id] = a;
  });

  if (isCompleteTask) {
    const archivesPath = `${ARCHIVE_DIR}/archives.json`;
    fs.writeFileSync(archivesPath, JSON.stringify(compiledArchives));
    await ossClient.put('archives/archives.json', archivesPath);
    console.log('Done put archives.json');
  }
  return compiledArchives;
}

async function findCreationDate() {
  commentsFiles.forEach(async (commentsFile) => {
    const id = +getIdFromCommentFilename(commentsFile);
    const timestamp = +execSync(
      `git log --format=%at '${ARCHIVE_DIR}/comments/${commentsFile}' | tail -1`,
    );
    await (() => {
      return new Promise((resolve, reject) => {
        connection.query(
          `UPDATE archives SET created_at = ?, updated_at = ? where id = ?;`,
          [timestamp, timestamp, id],
          (error, results) => {
            if (error) {
              console.log('error setting timestamps', error);
              reject(error);
            } else {
              console.log('results', results);
              resolve(results);
            }
          },
        );
      });
    })();
  });
}

// async function fillOrigUrl() {

// }

async function removeArchive(ids: number[]) {
  console.log('ids to delete: ', ids);
  await Promise.all(
    ids.map(async (id) => {
      await new Promise((resolve, reject) => {
        connection.query(
          `DELETE FROM archive_authors WHERE archive_id=?;
         DELETE FROM archive_publishers WHERE archive_id=?;
         DELETE FROM archive_origs WHERE archive_id=?;
         DELETE FROM archive_remarks WHERE archive_id=?;
         DELETE FROM archive_tags WHERE archive_id=?;
         DELETE FROM archives WHERE id=?;`,
          [id, id, id, id, id, id],
          (error, result) => {
            if (error) {
              reject(error);
            } else {
              console.log('Deletion done: ', result);
              resolve(result);
            }
          },
        );
      });
    }),
  );
}
