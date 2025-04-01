import { Tribute } from '../types/tribute.types';
import * as singleFileService from './singlefile.service';
import path from 'path';
import fs from 'fs';
import config from '../config';
import * as archiveManager from './archive-manager.service';

// 使用与其他服务相同的路径配置
const ARCHIVES_DIR = config.archives.rootDir;
const ORIGS_DIR = path.join(ARCHIVES_DIR, config.archives.subdirs.origs);

// 确保目录存在
if (!fs.existsSync(ARCHIVES_DIR)) {
  fs.mkdirSync(ARCHIVES_DIR, { recursive: true });
}
if (!fs.existsSync(ORIGS_DIR)) {
  fs.mkdirSync(ORIGS_DIR, { recursive: true });
}

/**
 * 保存上传的HTML文件到存档目录
 * @param tribute 文章信息，包含上传的HTML文件路径
 * @returns 更新后的tribute对象，包含archivePath
 */
export async function saveUploadedHtmlFile(tribute: Tribute): Promise<Tribute> {
  if (!tribute.uploadedHtmlFile || !fs.existsSync(tribute.uploadedHtmlFile)) {
    throw new Error('No valid HTML file uploaded');
  }

  try {
    // 生成唯一ID，如果没有的话
    if (!tribute.id) {
      tribute.id = archiveManager.generateUniqueId();
    }

    // 构建目标文件路径
    const targetFilename = `${tribute.id}.html`;
    const targetPath = path.join(ORIGS_DIR, targetFilename);

    // 复制上传的HTML文件到 ORIGS_DIR 目录
    fs.copyFileSync(tribute.uploadedHtmlFile, targetPath);

    // 更新tribute对象的archivePath
    tribute.archivePath = targetPath;

    console.log(`Manually uploaded HTML file saved to: ${targetPath}`);

    return tribute;
  } catch (error) {
    console.error(`Error processing uploaded HTML file: ${tribute.uploadedHtmlFile}`, error);
    throw error;
  }
}

/**
 * 使用single-file-cli抓取并存档网页
 * @param tribute 文章信息，必须包含link字段
 * @returns 更新后的tribute对象，包含archivePath
 */
export async function archiveWebpage(tribute: Tribute): Promise<Tribute> {
  if (!tribute.link) {
    throw new Error('No link provided to archive');
  }

  try {
    // 确保URL格式正确（添加协议前缀）
    let url = tribute.link;
    if (url && !url.startsWith('http://') && !url.startsWith('https://')) {
      url = 'https://' + url;
    }

    // 生成唯一ID，如果没有的话
    if (!tribute.id) {
      tribute.id = archiveManager.generateUniqueId();
    }

    // 创建文章信息对象
    const articleInfo: any = {
      title: tribute.title,
      author: tribute.author,
      publisher: tribute.publisher,
      date: tribute.date,
      chapter: tribute.chapter,
      tag: tribute.tag,
      remarks: tribute.remarks
    };

    // 使用 singlefile.service 的高级功能存档网页
    const result = await singleFileService.archiveWebpageWithMetadata(
      url,
      {
        browserWaitUntil: 'networkidle0',
        dumpContent: false,
        id: parseInt(tribute.id),
        articleInfo,
        browserArgs: ['--no-sandbox', '--disable-setuid-sandbox'],
        browserExecutablePath: '/usr/bin/google-chrome'
      }
    );

    // 更新 tribute 对象
    tribute.archivePath = result.htmlPath;

    return tribute;
  } catch (error) {
    console.error(`Error archiving ${tribute.link}:`, error);
    throw error;
  }
}
