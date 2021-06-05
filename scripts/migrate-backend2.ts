import * as fs from 'fs';
import { dirname } from 'path';
import { fileURLToPath } from 'url';
// eslint-disable-next-line import/no-extraneous-dependencies
import mysql from 'mysql';
import secrets from './secrets.json';

// eslint-disable-next-line no-underscore-dangle,@typescript-eslint/naming-convention
const __dirname = dirname(fileURLToPath(import.meta.url));
const ARCHIVE_DIR = `${__dirname}/../archives`;

const rawFile = fs.readFileSync(`${ARCHIVE_DIR}/archives.json`, 'utf-8');
const compiled = JSON.parse(rawFile);
const { archives } = compiled;
const connection = mysql.createConnection({
  host: 'lanting.wiki',
  user: 'root',
  password: secrets.db.password,
  database: 'lanting',
});
connection.connect();

let origTotal = 0;
let remarksTotal = 0;

Object.keys(compiled.archives).forEach((id) => {
  const timestamp = +new Date();
  const archive = archives[id];
  const publishDates = archive.date.split('-');
  // console.log('XXXTEMP', archive);
  connection.query(
    `INSERT IGNORE INTO archives(
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
    (error) => {
      if (error) {
        console.log('XXXTEMP archive', archive);
        throw error;
      }
    },
  );

  connection.query(
    `INSERT IGNORE INTO archive_publishers(
    archive_id,
    publisher
  ) values (
    ?,?
  )`,
    [id, archive.publisher],
    (error) => {
      if (error) {
        console.log('XXXTEMP publisher', archive);
        throw error;
      }
    },
  );

  connection.query(
    `INSERT IGNORE INTO archive_remarks(
    archive_id,
    remarks
  ) values (
    ?,?
  )`,
    [id, archive.remarks],
    (error) => {
      if (error) {
        console.log('XXXTEMP remarks', archive);
        throw error;
      }
      remarksTotal++;
    },
  );

  if (!archive.author) {
    console.log('XXXTEMP', archive);
  }
  archive.author.forEach((author: string) => {
    connection.query(
      `INSERT IGNORE INTO archive_authors(
      archive_id,
      author
    ) values (
      ?,?
    )`,
      [id, author],
      (error) => {
        if (error) {
          console.log('XXXTEMP author', archive);
          throw error;
        }
      },
    );
  });

  if (!archive.tag) {
    console.log('XXXTEMP', archive);
  }
  archive.tag.forEach((tag: string) => {
    connection.query(
      `INSERT IGNORE INTO archive_tags(
      archive_id,
      tag
    ) values (
      ?,?
    )`,
      [id, tag],
      (error) => {
        if (error) {
          console.log('XXXTEMP tag', archive);
          throw error;
        }
      },
    );
  });

  origTotal += archive.origs.length;
  if (!archive.origs.length) {
    console.log('XXXTEMP no orig', id, archive.title);
  }
  archive.origs.forEach((orig: string) => {
    connection.query(
      `INSERT IGNORE INTO archive_origs(
        archive_id,
        orig
      ) values (
        ?,?
      )`,
      [id, `https://lanting-public.oss-cn-beijing.aliyuncs.com/archives/origs/${orig}`],
      (error) => {
        if (error) {
          console.log('XXXTEMP orig', archive);
          throw error;
        }
      },
    );
  });
});

setTimeout(() => {
  connection.end();
  console.log('XXXTEMP origTotal', origTotal);
  console.log('XXXTEMP remarksTotal', remarksTotal);
}, 600000);
