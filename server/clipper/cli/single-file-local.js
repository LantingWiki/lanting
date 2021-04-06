/* eslint-disable global-require */
const { execSync } = require('child_process');
const path = require('path');
const fs = require('fs');

const ARCHIVE_DIR = `${__dirname}/../../../archives`;

run(require('./args'))
  // eslint-disable-next-line no-console
  .catch((error) => console.error(error.message || error));

async function run(options) {
  const currentArticles = fs.readdirSync(`${ARCHIVE_DIR}/comments`);
  /**
   * XXX boyang: custom option
   */
  const getCurrentId = () => {
    let files = currentArticles.slice().map((f) => +f.split('-')[0]);
    files = files.sort((a, b) => b - a);
    return files[0];
  };
  options.lantingId = getCurrentId() + 2;
  /**
   * Steps:
   * 1. specify current ID. ID passed as option
   * 2. save orig with names ID+1, ID+2 etc. Each task is given an ID
   * 3. create templates with ID-title1, ID-title2 etc
   */
  console.log('XXXTEMP options', options);
  const articleInfo = JSON.parse(options.articleinfo);
  const prefix = `${options.lantingId}-`;
  // XXX boyang: this is moved from single-file exec code
  const commentPathname = path.join(
    ARCHIVE_DIR,
    'comments',
    sanitizeFilename(`${prefix}${articleInfo.title}.md`),
  );
  console.log('XXXTEMP task options', options);
  fs.writeFileSync(
    commentPathname,
    fillArticleInfo(
      articleInfo.title,
      articleInfo,
    ),
  );
  console.log('XXXTEMP DONE');
  execSync(
    `export lantingid=${options.lantingId}`
  );
  execSync(
    `/Applications/"Visual Studio Code.app"/Contents/Resources/app/bin/code "${commentPathname}"`,
  );
}

function sanitizeFilename(filename) {
  filename = filename.replace(/ ?_ ?/g, '_');
  filename = filename.replace(/_+/g, '_');
  filename = filename.replace(
    /[\|\+,\/#!$%\^&\*;:{}=`~()：， 「」“”？、…《》%,【】！&’。、！？：；﹑•＂…‘’“”〝〞∕¦‖—　〈〉﹞﹝「」‹›〖〗】【»«』『〕〔》《﹐¸﹕︰﹔！¡？¿﹖﹌﹏﹋＇´ˊˋ―﹫︳︴¯＿￣﹢﹦﹤‐­˜﹟﹩﹠﹪﹡﹨﹍﹉﹎﹊ˇ︵︶︷︸︹︿﹀︺︽︾ˉ﹁﹂﹃﹄︻︼（）·?]/g,
    '_',
  );
  return filename;
};

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
${articleinfo.chapter || 'TODO'}

# tag
${articleinfo.tag || 'TODO'}

# remarks
${articleinfo.remarks || 'TODO'}
`;
}
