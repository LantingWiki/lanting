import { Tribute } from '../types/tribute.types';
import * as archiveManager from './archive-manager.service';
import * as webpageArchiver from './webpage-archiver.service';
import * as tributeQuery from './tribute-query.service';
import * as metadataExtractor from './metadata-extractor.service';
import * as path from 'path';
import * as fs from 'fs';
import config from '../config';

// 从其他服务中重新导出函数，以维持向后兼容性
export const extractMetadataFromHtml = metadataExtractor.extractMetadataFromHtml;
export const getAllTributes = tributeQuery.getAllTributes;
export const getTributeInfo = tributeQuery.getTributeInfo;
export const extractHtmlInfo = tributeQuery.extractHtmlInfo;

/**
 * Save a tribute to storage
 * 保存文章信息，包括元数据和存档
 * @param tribute 要保存的文章数据
 */
export const saveTribute = async (tribute: Tribute): Promise<void> => {
  console.log('开始保存tribute数据:', JSON.stringify({
    id: tribute.id,
    link: tribute.link,
    title: tribute.title,
    hasUploadedFile: !!tribute.uploadedFile
  }));

  try {
    // 如果没有ID，生成一个5位数ID
    if (!tribute.id) {
      tribute.id = archiveManager.generateUniqueId();
      console.log(`生成新的ID: ${tribute.id}`);
    }
  
    // 记录到内存存储，由tributeQuery服务管理
    await tributeQuery.getAllTributes().then(tributes => {
      tributes.push(tribute);
      console.log(`添加到内存存储，当前总数: ${tributes.length}`);
      return tributes;
    });
  
    // 如果有上传的文件，处理该文件
    if (tribute.uploadedFile) {
      try {
        console.log(`检测到上传文件，路径: ${tribute.uploadedFile}`);
        await webpageArchiver.saveUploadedFile(tribute);
        console.log(`上传文件处理成功: ${tribute.uploadedFile}`);
      } catch (err: any) {
        console.error(`Error processing uploaded file: ${tribute.uploadedFile}`, err);
        throw new Error(`处理上传文件失败: ${err.message}`);
      }
    }
    // 如果没有上传的文件但有链接，使用single-file-cli抓取内容
    else if (tribute.link) {
      try {
        console.log(`开始抓取网页: ${tribute.link}`);
        await webpageArchiver.archiveWebpage(tribute);
        console.log(`网页抓取完成: ${tribute.link}, 存档路径: ${tribute.archivePath}`);
      } catch (err: any) {
        console.error(`Failed to archive webpage: ${tribute.link}`, err);
        // 即使存档失败也不应该阻止保存元数据
        console.error(`网页存档失败，但会继续保存元数据: ${err.message}`);
        
        // 确保即使抓取失败，tribute也有一个archivePath
        if (!tribute.archivePath && tribute.id) {
          tribute.archivePath = `${tribute.id}.html`;
          console.log(`由于抓取失败，使用默认的archivePath: ${tribute.archivePath}`);
          
          // 尝试创建一个最小的HTML文件，以确保文件存在
          try {
            const origsDir = path.join(config.archives.rootDir, 'origs');
            const htmlFilePath = path.join(origsDir, tribute.archivePath);
            
            if (!fs.existsSync(htmlFilePath)) {
              console.log(`创建最小HTML文件: ${htmlFilePath}`);
              const simpleHtml = `
                <!DOCTYPE html>
                <html>
                <head>
                  <meta charset="UTF-8">
                  <title>${tribute.title}</title>
                </head>
                <body>
                  <h1>${tribute.title}</h1>
                  <p>原始链接: <a href="${tribute.link}">${tribute.link}</a></p>
                  <p>抓取失败，请访问原始链接查看内容。</p>
                </body>
                </html>
              `;
              fs.writeFileSync(htmlFilePath, simpleHtml, 'utf8');
              console.log(`创建最小HTML文件成功`);
            }
          } catch (fallbackError) {
            console.error(`创建最小HTML文件失败:`, fallbackError);
            // 继续处理，不阻止保存元数据
          }
        }
      }
    } else {
      console.warn('既没有上传文件也没有提供链接，将只保存元数据');
    }
  
    // 更新archives.json - 这会调用recompileArchivesJson来确保与文件系统同步
    try {
      console.log('开始更新archives.json');
      archiveManager.updateArchivesJson(tribute);
      console.log('archives.json更新成功');
    } catch (err: any) {
      console.error('更新archives.json失败:', err);
      throw new Error(`无法更新archives.json: ${err.message}`);
    }
    
    console.log('保存tribute数据完成');
  } catch (error) {
    console.error('保存tribute数据过程中出错:', error);
    throw error;
  }
};

/**
 * 手动重新编译archives.json，确保与文件系统同步
 * 当需要重新扫描文件系统时调用此函数（如手动删除文件后）
 */
export const recompileArchives = async (): Promise<void> => {
  try {
    console.log('开始重新编译archives.json...');
    // 直接调用archive-manager的重新编译函数
    archiveManager.recompileArchivesJson();
    console.log('Archives recompiled successfully');
  } catch (error) {
    console.error('Failed to recompile archives:', error);
    throw error;
  }
};
