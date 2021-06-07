import * as fs from 'fs';
import { dirname } from 'path';
import { fileURLToPath } from 'url';
// eslint-disable-next-line import/no-extraneous-dependencies
import mysql from 'mysql';
import { Archive, Archives } from './data';
import secrets from './secrets.json';

// eslint-disable-next-line no-underscore-dangle,@typescript-eslint/naming-convention
const __dirname = dirname(fileURLToPath(import.meta.url));
const ARCHIVE_DIR = `${__dirname}/../archives`;

export async function exec(compiled: Archives) {

  const { archives } = compiled;
  const connection = await mysql.createConnection({
    host: 'lanting.wiki',
    user: 'root',
    password: secrets.db.password,
    database: 'lanting',
  });
  await connection.connect();

  const promises: Promise<any>[] = [];
  Object.keys(compiled.archives).forEach((id) => {
    const timestamp = +new Date() / 1000;
    const archive = archives[id];
    const publishDates = archive.date.split('-');
    
    promises.push(new Promise((resolve, reject) => connection.query(
      `REPLACE INTO archives(
        id,
        created_at,
        updated_at,
        title,
        publish_year,
        publish_month,
        chapter
      ) values (
        ?,?,?,?,?,?,?
      )`,
      [id, timestamp, timestamp, archive.title, publishDates[0], publishDates[1], archive.chapter],
      (error, result) => {
        if (error) {
          console.log('error: ', archive);
          reject(error);
        } else {
          console.log('done: ', id);
          resolve(result);
        }
      },
    )));

    promises.push(new Promise((resolve, reject) => connection.query(
      `INSERT IGNORE INTO archive_publishers(
        archive_id,
        publisher
      ) values (
        ?,?
      )`,
      [id, archive.publisher],
      (error, result) => {
        if (error) {
          console.log('error: ', archive);
          reject(error);
        } else {
          console.log('done: ', id);
          resolve(result);
        }
      },
    )));

    promises.push(new Promise((resolve, reject) => connection.query(
      `INSERT IGNORE INTO archive_remarks(
        archive_id,
        remarks
      ) values (
        ?,?
      )`,
      [id, archive.remarks],
      (error, result) => {
        if (error) {
          console.log('error: ', archive);
          reject(error);
        } else {
          console.log('done: ', id);
          resolve(result);
        }
      },
    )));

    if (!archive.author) {
      console.log('XXXTEMP', archive);
    }
    archive.author.forEach((author: string) => {
      promises.push(new Promise((resolve, reject) => connection.query(
        `INSERT IGNORE INTO archive_authors(
          archive_id,
          author
        ) values (
          ?,?
        )`,
        [id, author],
        (error, result) => {
          if (error) {
            console.log('error: ', archive);
            reject(error);
          } else {
            console.log('done: ', id);
            resolve(result);
          }
        },
      )));
    });

    if (!archive.tag) {
      console.log('XXXTEMP', archive);
    }
    archive.tag.forEach((tag: string) => {
      promises.push(new Promise((resolve, reject) => connection.query(
        `INSERT IGNORE INTO archive_tags(
          archive_id,
          tag
        ) values (
          ?,?
        )`,
        [id, tag],
        (error, result) => {
          if (error) {
            console.log('error: ', archive);
            reject(error);
          } else {
            console.log('done: ', id);
            resolve(result);
          }
        },
      )));
    });

    // origTotal += archive.origs.length;
    // if (!archive.origs.length) {
    //   console.log('XXXTEMP no orig', id, archive.title);
    // }
    // archive.origs.forEach((orig: string) => {
    //   connection.query(
    //     `INSERT IGNORE INTO archive_origs(
    //     archive_id,
    //     orig
    //   ) values (
    //     ?,?
    //   )`,
    //     [id, `https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/${orig}`],
    //     (error) => {
    //       if (error) {
    //         console.log('XXXTEMP orig', archive);
    //         throw error;
    //       }
    //     },
    //   );
    // });
  });

  await Promise.all(promises);

  connection.end();
  console.log('END')
  // setTimeout(() => {
  //   connection.end();
  //   console.log('XXXTEMP origTotal', origTotal);
  //   console.log('XXXTEMP remarksTotal', remarksTotal);
  // }, 600000);
}

function main() {
  const rawFile = fs.readFileSync(`${ARCHIVE_DIR}/archives.json`, 'utf-8');
  const compiled = JSON.parse(rawFile);
  exec(compiled);
}
