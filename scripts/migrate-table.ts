/* eslint-disable no-console */
import * as fs from 'fs';
import { dirname } from 'path';
import { fileURLToPath } from 'url';

// eslint-disable-next-line no-underscore-dangle,@typescript-eslint/naming-convention
const __dirname = dirname(fileURLToPath(import.meta.url));
const ARCHIVE_DIR = `${__dirname}/../../archives`;
const regex = /\*\*(.+?)\*\* \| (.+?) \| (.+?) \| ([\s\S]+?)(?=\*\*|#)/g;
const currentArticles = fs.readdirSync(`${ARCHIVE_DIR}/comments`);

const getCurrentId = () => {
  const files = currentArticles.slice().sort();
  return +files[files.length - 1].split('-')[0];
};

const processAuthorPublisher = (raw: string) => {
  const res = raw.split('-').map((s) => s.trim());
  return { author: res[0].split(' ').map((s) => s.trim()), publisher: res[res.length - 1] };
};

const processTagDate = (raw: string) => {
  const res = raw
    .trim()
    .split(' ')
    .map((s) => s.trim());
  return { tag: res.slice(1), date: res[0].replace(/\./g, '-') };
};

function main() {
  let id = getCurrentId();
  const rawFile = fs.readFileSync(
    '/Users/wang.boyang/Projects/mine/wangboyang-blog/docs/2030-01-01-gods-work.md',
    'utf-8',
  );
  let m;
  // eslint-disable-next-line no-cond-assign
  while ((m = regex.exec(rawFile))) {
    const title = m[1];
    console.log('DOING: ', title, m[2], m[3]);
    if (currentArticles.some((a) => a.substring(a.indexOf('-') + 1) === `${title}.md`)) {
      console.log('SKIP: ', title);
      // eslint-disable-next-line no-continue
      continue;
    } else {
      console.log('SHOULD DO: ', title);
    }

    const { author, publisher } = processAuthorPublisher(m[2]);
    const { tag, date } = processTagDate(m[3]);
    const result = `# title
${m[1]}

# author
${author.join(',')}

# publisher
${publisher}

# date
${date}

# chapter
世家

# tag
${tag}

# remarks
${m[4].replace(/<br \/>/g, '\n')}
`;
    id++;
    fs.writeFileSync(`${ARCHIVE_DIR}/comments/${id}-${m[1]}.md`, result);
  }
}
main();
