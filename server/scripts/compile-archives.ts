/* eslint-disable no-console */
import * as fs from 'fs';
import { dirname } from 'path';
import { fileURLToPath } from 'url';

// eslint-disable-next-line no-underscore-dangle,@typescript-eslint/naming-convention
const __dirname = dirname(fileURLToPath(import.meta.url));
const ARCHIVE_DIR = `${__dirname}/../../archives`;

type Chapter = '本纪' | '世家' | '列传' | '群像' | '随园食单';

class FieldFreqMap {
  author: {
    [key: string]: string;
  } = {};

  publisher: {
    [key: string]: string;
  } = {};

  date: {
    [key: string]: string;
  } = {};

  tag: {
    [key: string]: string;
  } = {};
}

class Archive {
  id: string = '';

  title: string = '';

  author: string[] = [];

  publisher: string = '';

  date: string = '';

  chapter: Chapter = '列传';

  tags: string[] = [];

  remarks: string = '';

  hasOrig: boolean = false;
}

class Archives {
  archives: Archive[] = [];

  fieldFreqMap: FieldFreqMap = new FieldFreqMap();
}

function setField(archive: Archive, field: string, fileContent: string, archives: Archives) {
  const regexArr = toFieldRegex(field).exec(fileContent);
  if (regexArr && regexArr[1]) {
    const fieldVal = getFieldFromFieldLine(field, regexArr[1]);
    archive[field] = fieldVal;
    fileContent = fileContent.replace(regexArr[0], '');

    if (['author', 'publisher', 'date', 'tag'].includes(field)) {
      archives.fieldFreqMap[field][fieldVal] = (archives.fieldFreqMap[field][fieldVal] || 0) + 1;
    }
  } else {
    console.log('Failed to get field: ', field);
  }
  return fileContent;
}

function getFieldFromFieldLine(field: string, fieldLine: string) {
  switch (field) {
    case 'publisher':
    case 'date':
    case 'chapter':
      return fieldLine;
    case 'author':
    case 'tags':
      return fieldLine.split(',').map((s) => s.trim());
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

function main() {
  const compiledArchives = new Archives();

  const commentsFiles = fs.readdirSync(`${ARCHIVE_DIR}/comments`);
  console.log('Comments count: ', commentsFiles.length);

  compiledArchives.archives = commentsFiles.map((f) => {
    console.log('Processing: ', f);

    const archive = new Archive();
    archive.id = getIdFromCommentFilename(f);

    let fileContent: string = fs.readFileSync(`${ARCHIVE_DIR}/comments/${f}`, 'utf-8');

    ['author', 'publisher', 'date', 'chapter', 'tags'].forEach((field) => {
      fileContent = setField(archive, field, fileContent, compiledArchives);
    });

    return archive;
  });

  fs.writeFileSync(`${ARCHIVE_DIR}/archives.json`, JSON.stringify(compiledArchives));
}
main();
