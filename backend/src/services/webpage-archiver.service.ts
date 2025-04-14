import { Tribute } from '../types/tribute.types';
import * as singleFileService from './singlefile.service';
import path from 'path';
import fs from 'fs';
import config from '../config';
import * as archiveManager from './archive-manager.service';
import { exec } from 'child_process';
import util from 'util';

const execPromise = util.promisify(exec);

// 使用与其他服务相同的路径配置
const ARCHIVES_DIR = config.archives.rootDir;
const ORIGS_DIR = path.join(ARCHIVES_DIR, config.archives.subdirs.origs);

// 确保所有需要的目录存在
if (!fs.existsSync(ARCHIVES_DIR)) {
  fs.mkdirSync(ARCHIVES_DIR, { recursive: true });
}
if (!fs.existsSync(ORIGS_DIR)) {
  fs.mkdirSync(ORIGS_DIR, { recursive: true });
}

/**
 * 保存上传的文件（PDF、图片）到存档目录
 * @param tribute 文章信息，包含上传的文件路径
 * @returns 更新后的tribute对象，包含archivePath
 */
export const saveUploadedFile = async (tribute: Tribute): Promise<Tribute> => {
  if (!tribute.uploadedFile) {
    console.error('未提供上传文件路径，无法处理');
    return tribute;
  }

  try {
    // 使用传入的ID，确保ID格式一致
    const id = tribute.id;
    if (!id) {
      console.error('未提供ID，无法处理上传的文件');
      return tribute;
    }
    
    // 检测文件类型
    const uploadedFilePath = tribute.uploadedFile;
    console.log(`处理上传的文件: ${uploadedFilePath}`);
    
    // 获取文件扩展名
    const fileExt = path.extname(uploadedFilePath).toLowerCase();
    
    // 确保目录存在
    const origsDir = path.join(config.archives.rootDir, 'origs');
    const commentsDir = path.join(config.archives.rootDir, 'comments');
    
    console.log(`检查目录是否存在: ${origsDir} 和 ${commentsDir}`);
    fs.mkdirSync(origsDir, { recursive: true });
    fs.mkdirSync(commentsDir, { recursive: true });

    // 目标文件路径
    const targetFileName = `${id}${fileExt}`;
    const targetFilePath = path.join(origsDir, targetFileName);
    
    console.log(`准备将上传文件保存到: ${targetFilePath}`);
    
    // 读取源文件
    const fileData = fs.readFileSync(uploadedFilePath);
    console.log(`读取上传文件成功: ${uploadedFilePath}, 大小: ${fileData.length} 字节`);
    
    // 写入目标文件
    fs.writeFileSync(targetFilePath, fileData);
    console.log(`写入目标文件成功: ${targetFilePath}`);
    
    // 检查文件是否创建成功
    if (fs.existsSync(targetFilePath)) {
      console.log(`目标文件创建成功: ${targetFilePath}, 大小: ${fs.statSync(targetFilePath).size} 字节`);
    } else {
      console.error(`目标文件创建失败: ${targetFilePath}`);
    }
    
    // 创建评论文件
    const titleSafe = tribute.title.replace(/[\\/:*?"<>|]/g, '_'); // 清理文件名中的非法字符
    const commentFilePath = path.join(commentsDir, `${id}- ${titleSafe}.md`);
    
    try {
      let commentContent = `# ${tribute.title}\n\n`;
      commentContent += `- 链接: ${tribute.link}\n`;
      commentContent += `- 作者: ${tribute.author}\n`;
      commentContent += `- 出版方: ${tribute.publisher}\n`;
      commentContent += `- 日期: ${tribute.date}\n\n`;
      
      if (tribute.remarks) {
        commentContent += `## 备注\n\n${tribute.remarks}\n\n`;
      }
      
      fs.writeFileSync(commentFilePath, commentContent, 'utf8');
      console.log(`评论文件创建成功: ${commentFilePath}`);
    } catch (error) {
      console.error(`创建评论文件失败: ${commentFilePath}`, error);
    }
    
    // 更新文章信息中的存档路径和文件类型
    tribute.archivePath = targetFileName;
    tribute.fileType = fileExt.substring(1); // 去掉点号
    
    console.log(`上传文件处理完成: ${tribute.archivePath}`);

    // 更新archives.json
    await archiveManager.updateArchivesJson(tribute);

    return tribute;
  } catch (error) {
    console.error(`Failed to process uploaded file: ${tribute.uploadedFile}`, error);
    throw error;
  }
}

/**
 * 为了向后兼容保留的旧函数名
 * @deprecated 使用 saveUploadedFile 替代
 */
export async function saveUploadedHtmlFile(tribute: Tribute): Promise<Tribute> {
  // 如果是使用旧API，需要将uploadedHtmlFile赋值给uploadedFile
  if (tribute.uploadedHtmlFile && !tribute.uploadedFile) {
    tribute.uploadedFile = tribute.uploadedHtmlFile;
  }
  return saveUploadedFile(tribute);
}

/**
 * 使用single-file抓取并存档网页
 * @param tribute 文章信息
 */
export const archiveWebpage = async (tribute: Tribute): Promise<void> => {
  if (!tribute.link) {
    console.error('未提供链接，无法抓取网页');
    return;
  }

  try {
    // 使用传入的ID，确保ID格式一致
    const id = tribute.id;
    if (!id) {
      console.error('未提供ID，无法抓取网页');
      return;
    }
    
    // 确保目录存在
    const origsDir = path.join(config.archives.rootDir, 'origs');
    const commentsDir = path.join(config.archives.rootDir, 'comments');
    
    console.log(`检查目录是否存在: ${origsDir} 和 ${commentsDir}`);
    fs.mkdirSync(origsDir, { recursive: true });
    fs.mkdirSync(commentsDir, { recursive: true });
    
    // 保存的HTML文件路径
    const htmlFilePath = path.join(origsDir, `${id}.html`);
    console.log(`准备将HTML保存到: ${htmlFilePath}`);
    
    console.log(`开始抓取 webpage: ${tribute.link}`);
    
    // 构建命令 - 增加超时参数
    const cmd = `npx single-file "${tribute.link}" "${htmlFilePath}" --browser-wait-until=networkidle0 --browser-executable-path="${config.chromePath}" --browser-args='["--no-sandbox","--disable-setuid-sandbox"]' --browser-timeout=60000 --dump-content=false`;
    console.log(`执行命令: ${cmd}`);
    
    // 执行命令，增加超时设置
    try {
      const { stdout, stderr } = await execPromise(cmd, { timeout: 120000 });
      
      if (stderr) {
        console.warn(`Warning when archiving ${tribute.link}: ${stderr}`);
      }
    } catch (execError: any) {
      console.error(`抓取网页失败: ${execError.message}`);
      
      // 尝试创建一个简单的HTML文件，以确保文件存在
      try {
        console.log(`抓取超时或失败，创建简单HTML文件...`);
        const simpleHtml = `
          <!DOCTYPE html>
          <html>
          <head>
            <meta charset="UTF-8">
            <title>${tribute.title}</title>
            <meta name="author" content="${tribute.author}">
            <meta name="date" content="${tribute.date}">
          </head>
          <body>
            <h1>${tribute.title}</h1>
            <p>原始链接: <a href="${tribute.link}">${tribute.link}</a></p>
            <p>作者: ${tribute.author}</p>
            <p>出版方: ${tribute.publisher}</p>
            <p>日期: ${tribute.date}</p>
            <p>备注: ${tribute.remarks || ''}</p>
            <p>抓取失败，请访问原始链接查看内容。</p>
          </body>
          </html>
        `;
        fs.writeFileSync(htmlFilePath, simpleHtml, 'utf8');
        console.log(`创建简单HTML文件成功: ${htmlFilePath}`);
      } catch (fallbackError) {
        console.error(`创建简单HTML文件失败: ${fallbackError}`);
        throw execError; // 向上传递原始错误
      }
    }
    
    // 检查文件是否创建成功
    if (fs.existsSync(htmlFilePath)) {
      console.log(`HTML文件创建成功: ${htmlFilePath}, 大小: ${fs.statSync(htmlFilePath).size} 字节`);
    } else {
      console.error(`HTML文件创建失败: ${htmlFilePath}`);
      throw new Error(`HTML文件创建失败: ${htmlFilePath}`);
    }
    
    // 创建评论文件
    const titleSafe = tribute.title.replace(/[\\/:*?"<>|]/g, '_'); // 清理文件名中的非法字符
    const commentFilePath = path.join(commentsDir, `${id}- ${titleSafe}.md`);
    
    try {
      let commentContent = `# ${tribute.title}\n\n`;
      commentContent += `- 链接: ${tribute.link}\n`;
      commentContent += `- 作者: ${tribute.author}\n`;
      commentContent += `- 出版方: ${tribute.publisher}\n`;
      commentContent += `- 日期: ${tribute.date}\n\n`;
      
      if (tribute.remarks) {
        commentContent += `## 备注\n\n${tribute.remarks}\n\n`;
      }
      
      console.log(`尝试写入评论文件: ${commentFilePath}`);
      fs.writeFileSync(commentFilePath, commentContent, 'utf8');
      console.log(`评论文件创建成功: ${commentFilePath}`);
    } catch (error) {
      console.error(`创建评论文件失败: ${commentFilePath}`, error);
    }
    
    console.log(`Archive completed for ${tribute.link}: `);
    console.log(`HTML saved to: ${htmlFilePath}`);
    console.log(`Metadata saved to: ${commentFilePath}`);
    
    // 更新文章信息中的存档路径
    tribute.archivePath = `${id}.html`;
    
    console.log(`抓取完成: ${tribute.link}`);
  } catch (error) {
    console.error(`Failed to archive webpage: ${tribute.link}`, error);
    throw error;
  }
};
