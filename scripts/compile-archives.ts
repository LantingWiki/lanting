/* eslint-disable no-console */
import * as fs from 'fs';
import { dirname } from 'path';
import { fileURLToPath } from 'url';
import OSS from 'ali-oss';
// eslint-disable-next-line import/no-extraneous-dependencies
import mysql from 'mysql';
import { execSync } from 'child_process';
import axios from "axios";
import { Archive, Archives } from './data';
import secrets from './secrets.json';

const connection = mysql.createConnection({
  host: 'lanting.wiki',
  user: 'root',
  password: secrets.db.password,
  database: 'lanting',
  connectTimeout: 60000,
});

const client = new OSS({
  region: 'oss-cn-beijing',
  accessKeyId: secrets.oss.accessKeyId,
  accessKeySecret: secrets.oss.accessKeySecret,
  bucket: 'lanting-public'
});

// eslint-disable-next-line no-underscore-dangle,@typescript-eslint/naming-convention
const __dirname = dirname(fileURLToPath(import.meta.url));
const ARCHIVE_DIR = `${__dirname}/../archives`;
// XXX boyang: old way
// const currentOrigFiles = fs.readdirSync(`${ARCHIVE_DIR}/origs`);
let currentOrigFiles: string[] = [];
let currentOrigDb: any[] = [];
const commentsFiles = fs.readdirSync(`${ARCHIVE_DIR}/comments`);

function setField(archive: Archive, field: string, fileContent: string, archives: Archives) {
  const regexArr = toFieldRegex(field).exec(fileContent);
  if (regexArr && regexArr[1]) {
    const fieldVal = getFieldFromFieldLine(field, regexArr[1]);
    archive[field] = fieldVal;
    fileContent = fileContent.replace(regexArr[0], '');

    updateFreqMap(field, fieldVal, archives);
  } else {
    console.log('Failed to get field: ', field);
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

async function init() {
  currentOrigFiles = (await client.list({ prefix: 'archives/origs/', 'max-keys': 1000 }, {}))
    .objects
    .map(o => o.name.replace(/^archives\/origs\//, ''));
  console.log('XXXTEMP currentOrigFiles OSS', currentOrigFiles.length);

  currentOrigDb = await (new Promise((resolve, reject) => {
    connection.query(
      `SELECT * from archive_origs`,
      (error, results) => {
        if (error) {
          reject(error);
        } else {
          resolve(results)
        }
      }
    );
  }));
}

async function origsMap() {
  const archives = commentsFiles.map((f) => {

    const archive = new Archive();
    archive.id = getIdFromCommentFilename(f);

    const foundOrigs = currentOrigFiles.filter((orig) => {
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

  console.log('XXXTEMP archives length', archives.length);

  const inCommentsButNotInDbOrig = archives.reduce((prev: string[], cur) => {
    const found = currentOrigDb.find(a => a.archive_id === +cur.id);
    if (!found) {
      prev.push(cur.id);
    }
    return prev;
  }, []);
  console.log("XXX in comments but not in db", inCommentsButNotInDbOrig);

  // const inCommentsButNotInOssOrig = archives.reduce((prev: string[], cur) => {
  //   const found = currentOrigFiles.find(o => o.split('.')[0] === cur.id);
  //   if (!found) {
  //     prev.push(cur.id);
  //   }
  //   return prev;
  // }, []);
  // console.log("XXX in comments but not in oss", inCommentsButNotInOssOrig);

  // const noOrig = archives.filter(a => (a.origs || []).length === 0).map(a => a.id);
  const noComment = currentOrigDb.filter(o => !archives.find(a => +a.id === o.archive_id));

  // console.log('XXXTEMP db origs', currentOrigDb);
  console.log('XXXTEMP in db but noComment', noComment);
}

async function giveNotationsForNoOrigArchives() {
  // console.log('XXXTEMP', parseOrigFilename('1000.html'));
  // console.log('XXXTEMP', parseOrigFilename('1000-10.pdf'));

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
  await Promise.all(currentOrigFiles.map(async (id) => {
    const idParts = parseOrigFilename(id);
    if (!idParts || !idParts[0] || idParts[0] === '' || !/[0-9]+/.test(idParts[0])) {
      return Promise.resolve();
    }
    let origUrl = await getOrigUrlFromOss(`https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/${id}`);
    let type = 'article';
    let ossPrefix = 'https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/';
    if (id[2] !== 'html') {
      origUrl = 'about:blank#';
      type = 'document';
      ossPrefix = 'about:blank#';
    }
    return new Promise((resolve, reject) => {
      connection.query(
        `INSERT IGNORE INTO archive_origs (archive_id, type, orig_url, filename, oss_prefix)
        values (?, ?, ?, ?, ?)`,
        [idParts[0], type, origUrl, `${id}`, ossPrefix],
        (error, results) => {
          if (error) {
            reject(error);
          } else {
            console.log('XXXTEMP done', id);
            resolve(results);
          }
        }
      );
    });
  }));
  // ['10428', '10886', '10888', '10890',
  // '10906', '10908', '10910', '10912',
  // '10914', '10916', '10918', '10920',
  // '10922', '10950', '10952', '10954',
  // '10956', '10972', '10974', '10976',
  // '10978'];
}

async function getOrigUrlFromOss(url: string): Promise<string | null> {
  const res = await axios.get(url);
  const searchArea: string = await res.data.slice(0, 6 * 1024);
  const groups = searchArea.match(/Page saved with SingleFile\s+url: ([^\s]+)\s+/);
  return groups ? groups[1] : null;
}

function parseOrigFilename(filename: string) {
  if (!/^[0-9]+\.[0-9a-zA-Z]+$/.test(filename)) {
    return null;
  }
  const suffix = filename.substring(filename.lastIndexOf('.')+1);
  if (!filename.includes('-')) {
    return [filename.substring(0, filename.indexOf('.')), null, suffix];
  }
  return filename.split(/[.-]+/);
}

async function compileArchives() {
  const compiledArchives = new Archives();
  console.log('Comments count: ', commentsFiles.length);

  const archives: Archive[] = commentsFiles.map((f) => {

    const archive = new Archive();
    archive.id = getIdFromCommentFilename(f);

    let fileContent: string = fs.readFileSync(`${ARCHIVE_DIR}/comments/${f}`, 'utf-8');

    ['title', 'author', 'publisher', 'date', 'chapter', 'tag'].forEach((field) => {
      fileContent = setField(archive, field, fileContent, compiledArchives);
    });
    archive.remarks = fileContent.replace('# remarks', '');

    const foundOrigs = currentOrigFiles.filter((orig) => {
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

  fs.writeFileSync(`${ARCHIVE_DIR}/archives.json`, JSON.stringify(compiledArchives));
}

async function findCreationDate() {
  commentsFiles.forEach(async (commentsFile) => {
    const id = +getIdFromCommentFilename(commentsFile);
    const timestamp = +execSync(`git log --format=%at '${ARCHIVE_DIR}/comments/${commentsFile}' | tail -1`);
    await (() => {
      return new Promise((resolve, reject) => {
        connection.query(
          `UPDATE archives SET created_at = ?, updated_at = ? where id = ?;`,
          [timestamp, timestamp, id],
          (error, results) => {
            if (error) {
              console.log('XXXTEMP error setting timestamps', error);
              reject(error);
            } else {
              console.log('XXXTEMP results', results);
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

async function main() {
  await init();
  // await findCreationDate();
  // await origsMap();
  await giveNotationsForNoOrigArchives();
  // await compileArchives();
  connection.end();
}

main();
