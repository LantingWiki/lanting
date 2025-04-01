import { exec } from 'child_process';
import fs from 'fs';
import path from 'path';
import util from 'util';
import dotenv from 'dotenv';
// 修改导入语句，使用 require 方式导入 puppeteer
const puppeteer = require('puppeteer');

// 引入配置文件
import config from '../config';

// 加载环境变量
dotenv.config();

// 转换 exec 为 Promise 版本
const execPromise = util.promisify(exec);

// 使用配置文件中的路径
const ARCHIVES_DIR = config.archives.rootDir;
const ORIGS_DIR = path.join(ARCHIVES_DIR, config.archives.subdirs.origs);
const COMMENTS_DIR = path.join(ARCHIVES_DIR, config.archives.subdirs.comments);

// 确保存档目录存在
[ARCHIVES_DIR, ORIGS_DIR, COMMENTS_DIR].forEach(dir => {
  if (!fs.existsSync(dir)) {
    fs.mkdirSync(dir, { recursive: true });
  }
});

// 配置项扩展
interface SingleFileOptions {
  browserWaitUntil?: string;
  browserExecutablePath?: string;
  browserArgs?: string[];  // 添加此行以支持浏览器参数
  dumpContent?: boolean;
  outputDirectory?: string;
  articleInfo?: ArticleInfo;
  noopen?: boolean;
  id?: number;
}

// 文章信息接口
interface ArticleInfo {
  title?: string;
  author?: string;
  publisher?: string;
  date?: string;
  chapter?: string;
  tag?: string;
  remarks?: string;
}

/**
 * 判断是否应该使用 Docker 模式
 */
const shouldUseDocker = process.env.USE_SINGLEFILE_DOCKER === 'true';

/**
 * 浏览器可执行文件路径 - 优先使用环境变量中的设置，否则尝试获取 Puppeteer 的路径
 */
const browserPath = process.env.BROWSER_EXECUTABLE_PATH;

/**
 * 尝试获取 Puppeteer 的 Chromium 路径
 * @returns Puppeteer Chromium 可执行文件的路径
 */
async function getPuppeteerChromiumPath(): Promise<string | undefined> {
  try {
    // 添加必要的启动参数，解决Linux服务器上的问题
    const browser = await puppeteer.launch({
      headless: 'new',  // 使用新的无头模式
      args: [
        '--no-sandbox',
        '--disable-setuid-sandbox',
        '--disable-dev-shm-usage',
        '--disable-accelerated-2d-canvas',
        '--no-first-run',
        '--no-zygote',
        '--single-process',
        '--disable-gpu'
      ]
    });

    const executablePath = puppeteer.executablePath();
    await browser.close();
    console.log(`Using Puppeteer's Chromium at: ${executablePath}`);
    return executablePath;
  } catch (error) {
    console.error('Failed to get Puppeteer Chromium path:', error);
    return undefined;
  }
}

/**
 * 获取下一个可用ID
 */
function getNextId(): number {
  try {
    const files = fs.readdirSync(COMMENTS_DIR);
    if (files.length === 0) return 1001; // 起始ID

    const ids = files
      .map(f => parseInt(f.split('-')[0]))
      .filter(id => !isNaN(id))
      .sort((a, b) => b - a);

    return ids.length > 0 ? ids[0] + 1 : 1001;
  } catch (error) {
    console.error('Error getting next ID:', error);
    return 1001; // 默认起始ID
  }
}

/**
 * 清理文件名，移除非法字符
 */
function sanitizeFilename(filename: string): string {
  filename = filename.replace(/ ?_ ?/g, '_');
  filename = filename.replace(/_+/g, '_');
  filename = filename.replace(
    /[\|\+,\/#!$%\^&\*;:{}=`~()：， 「」""？、…《》%,【】！&'。、！？：；﹑•＂…''""〝〞∕¦‖—　〈〉﹞﹝「」‹›〖〗】【»«』『〕〔》《﹐¸﹕︰﹔！¡？¿﹖﹌﹏﹋＇´ˊˋ―﹫︳︴¯＿￣﹢﹦﹤‐­˜﹟﹩﹠﹪﹡﹨﹍﹉﹎﹊ˇ︵︶︷︸︹︿﹀︺︽︾ˉ﹁﹂﹃﹄︻︼（）·?]/g,
    '_'
  );
  return filename;
}

/**
 * 生成文章信息模板
 */
function fillArticleInfo(title: string, articleInfo: ArticleInfo): string {
  return `# title
${title || 'TODO'}

# author
${articleInfo.author || 'TODO'}

# publisher
${articleInfo.publisher || 'TODO'}

# date
${articleInfo.date || 'TODO'}

# chapter
${articleInfo.chapter || 'TODO'}

# tag
${articleInfo.tag || 'TODO'}

# remarks
${articleInfo.remarks || 'TODO'}
`;
}

/**
 * 执行浏览器脚本获取网页元数据
 */
async function extractPageMetadata(url: string): Promise<ArticleInfo> {
  const browser = await puppeteer.launch();
  try {
    const page = await browser.newPage();
    await page.goto(url, { waitUntil: 'networkidle0' });

    // 类似于 single-file-browser.js 的脚本逻辑
    const metadata = await page.evaluate(() => {
      const res: any = { title: document.title };
      const xPost = document.querySelector('.original_primary_card_tips');

      if (xPost) {
        // 转载 x-posting
        const m = (xPost as HTMLElement).innerText.match(/^The following article is from (.*?) Author (.*)$/);
        if (m) {
          res.author = m[2].split(' ').join(', ');
          res.publisher = m[1];
        }
      } else {
        const authorNode = document.querySelector('span.rich_media_meta.rich_media_meta_text');
        if (authorNode) {
          res.author = (authorNode as HTMLElement).innerText.split(' ').join(', ');
        }

        const publisherNode = document.querySelector('#js_name');
        if (publisherNode) {
          res.publisher = (publisherNode as HTMLElement).innerText;
        }
      }

      const regex = /^([0-9]{1,2})\/([0-9]{1,2})$/;
      const dtNode = document.querySelector('#publish_time');
      if (dtNode) {
        let dt = (dtNode as HTMLElement).innerText;
        if (dt === 'Yesterday' || dt === 'Today' || dt.includes('days ago') || dt.includes('week ago')) {
          dt = new Date().toISOString().substring(0, 7);
        } else if (regex.test(dt)) {
          const m = regex.exec(dt);
          if (m) {
            dt = `${new Date().getFullYear()}-${m[1].padStart(2, '0')}`;
          }
        } else {
          dt = dt.substring(0, 7);
        }
        res.date = dt;
      }

      return res;
    });

    return metadata;
  } finally {
    await browser.close();
  }
}

/**
 * 使用 single-file-cli 将网页存档为单个 HTML 文件
 * @param url 要存档的网页 URL
 * @param fileName 保存的文件名（不含路径）
 * @param options 选项
 * @returns 存档文件的完整路径
 */
export async function archiveWebpage(
  url: string,
  fileName: string,
  options: SingleFileOptions = {}
): Promise<string> {
  // 设置默认选项
  const defaultOptions: SingleFileOptions = {
    browserWaitUntil: 'networkidle0',
    dumpContent: false,
    outputDirectory: ARCHIVES_DIR
  };

  // 合并选项
  const mergedOptions = { ...defaultOptions, ...options };

  // 构建输出路径
  const outputPath = path.join(mergedOptions.outputDirectory!, fileName);

  try {
    let command;

    if (shouldUseDocker) {
      // Docker 模式
      const outputDir = path.dirname(outputPath);
      const outputFile = path.basename(outputPath);

      command = `docker run -v "${outputDir}":/usr/src/app/out singlefile "${url}" /usr/src/app/out/${outputFile} --browser-wait-until=${mergedOptions.browserWaitUntil}`;
    } else {
      // NPX 模式 - 不使用 Docker
      command = `npx single-file "${url}" "${outputPath}" --browser-wait-until=${mergedOptions.browserWaitUntil}`;

      // 如果提供了浏览器路径，添加到命令中
      let chromePath = browserPath || mergedOptions.browserExecutablePath;

      // 如果没有指定浏览器路径，尝试使用 Puppeteer 的 Chromium
      if (!chromePath) {
        chromePath = await getPuppeteerChromiumPath();
      }

      if (chromePath) {
        command += ` --browser-executable-path="${chromePath}"`;

        // 添加浏览器参数
        if (mergedOptions.browserArgs && mergedOptions.browserArgs.length > 0) {
          // 将参数数组转换为 JSON 字符串格式
          const browserArgsJSON = JSON.stringify(mergedOptions.browserArgs);
          command += ` --browser-args='${browserArgsJSON}'`;
        }
      }

      if (mergedOptions.dumpContent === false) {
        command += ' --dump-content=false';
      }
    }

    console.log(`Executing SingleFile: ${command}`);
    const { stdout, stderr } = await execPromise(command);

    if (stderr) {
      console.warn(`Warning when archiving ${url}:`, stderr);
    }

    console.log(`Archive completed for ${url}: ${stdout}`);

    return outputPath;
  } catch (error) {
    console.error(`Error archiving ${url}:`, error);
    throw error;
  }
}

/**
 * 使用 single-file-cli 将网页存档并创建元数据文件
 * @param url 要存档的网页URL
 * @param options 配置选项
 * @returns 存档结果，包含HTML路径、元数据路径和ID
 */
export async function archiveWebpageWithMetadata(
  url: string,
  options: SingleFileOptions = {}
): Promise<{ htmlPath: string; metadataPath: string; id: number }> {
  // 使用传入的ID或者生成新ID
  const nextId = options.id || getNextId();
  const htmlFileName = `${nextId}.html`;
  const htmlPath = path.join(ORIGS_DIR, htmlFileName);

  // 先存档HTML
  await archiveWebpage(url, htmlFileName, {
    ...options,
    outputDirectory: ORIGS_DIR
  });

  // 提取或使用传入的文章信息
  let articleInfo = options.articleInfo || {};
  if (!articleInfo.title) {
    // 如果没有提供文章信息，尝试从页面中提取
    try {
      const extractedInfo = await extractPageMetadata(url);
      articleInfo = { ...extractedInfo, ...articleInfo };
    } catch (error) {
      console.warn('Failed to extract page metadata:', error);
    }
  }

  // 生成并保存元数据文件
  const title = articleInfo.title || '未命名文章';
  const metadataFileName = `${nextId}-${sanitizeFilename(title)}.md`;
  const metadataPath = path.join(COMMENTS_DIR, metadataFileName);

  fs.writeFileSync(
    metadataPath,
    fillArticleInfo(title, articleInfo)
  );

  console.log(`Archived webpage: ${url}`);
  console.log(`HTML saved to: ${htmlPath}`);
  console.log(`Metadata saved to: ${metadataPath}`);

  return {
    htmlPath,
    metadataPath,
    id: nextId
  };
}

/**
 * 生成安全的文件名
 * @param baseName 文件名基础部分
 * @param extension 文件扩展名（默认为 .html）
 */
export function generateSafeFileName(baseName: string, extension: string = '.html'): string {
  // 清理文件名中的非法字符
  const safeName = baseName
    .replace(/[\/\\?%*:|"<>]/g, '_')  // 替换文件系统中的非法字符
    .replace(/\s+/g, '_')             // 替换空格
    .substring(0, 200);               // 限制长度

  return `${safeName}${extension}`;
}
