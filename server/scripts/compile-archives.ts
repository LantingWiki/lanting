/* eslint-disable no-console */
import * as fs from 'fs';

const ARCHIVE_DIR = `${__dirname}/../../public/archives`;

type Chapter = '本纪' | '世家' | '游侠' | '群像' | '随园食单';

class Archive {
  id: string = '';

  title: string = '';

  author: string = '';

  publisher: string = '';

  date: string = '';

  chapter: Chapter = '游侠';

  tags: string[] = [];

  remarks: string = '';

  hasOrig: boolean = false;
}

function setField(archive: Archive, field: string, fileContent: string) {
  const regexArr = toFieldRegex(field).exec(fileContent);
  if (regexArr && regexArr[1]) {
    archive[field] = getFieldFromFieldLine(field, regexArr[1]);
    fileContent = fileContent.replace(regexArr[0], '');
  } else {
    console.log('Failed to get field: ', field);
  }
  return fileContent;
}

function getFieldFromFieldLine(field: string, fieldLine: string) {
  switch (field) {
    case 'author':
    case 'publisher':
    case 'date':
    case 'chapter':
      return fieldLine;
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
  const compiledArchives: { archives: Archive[] } = {
    archives: [],
  };

  const commentsFiles = fs.readdirSync(`${ARCHIVE_DIR}/comments`);
  console.log('Comments count: ', commentsFiles.length);

  compiledArchives.archives = commentsFiles.map((f) => {
    console.log('Processing: ', f);

    const archive = new Archive();
    archive.id = getIdFromCommentFilename(f);

    let fileContent: string = fs.readFileSync(`${ARCHIVE_DIR}/comments/${f}`, 'utf-8');

    ['author', 'publisher', 'date', 'chapter', 'tags'].forEach((field) => {
      fileContent = setField(archive, field, fileContent);
    });

    return archive;
  });

  fs.writeFileSync(`${ARCHIVE_DIR}/archives.json`, JSON.stringify(compiledArchives));
}
main();
