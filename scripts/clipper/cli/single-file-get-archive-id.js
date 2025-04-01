const fs = require('fs');

const ARCHIVE_DIR = `${__dirname}/../../../archives`;

const currentArticles = fs.readdirSync(`${ARCHIVE_DIR}/comments`);
/**
 * XXX boyang: custom option
 */
const getCurrentId = () => {
  let files = currentArticles.slice().map((f) => +f.split('-')[0]);
  files = files.sort((a, b) => b - a);
  return files[0];
};

// eslint-disable-next-line @typescript-eslint/no-unused-expressions
console.log(getCurrentId() + 2);
