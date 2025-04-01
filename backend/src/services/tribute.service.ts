import { Tribute } from '../types/tribute.types';
import * as archiveManager from './archive-manager.service';
import * as webpageArchiver from './webpage-archiver.service';
import * as tributeQuery from './tribute-query.service';
import * as metadataExtractor from './metadata-extractor.service';

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
  // 记录到内存存储，由tributeQuery服务管理
  await tributeQuery.getAllTributes().then(tributes => {
    tributes.push(tribute);
    return tributes;
  });

  // 如果有上传的HTML文件，处理该文件
  if (tribute.uploadedHtmlFile) {
    try {
      await webpageArchiver.saveUploadedHtmlFile(tribute);
    } catch (error) {
      console.error(`Error processing uploaded HTML file: ${tribute.uploadedHtmlFile}`, error);
      // 即使处理失败也不应该阻止保存元数据
    }
  }
  // 如果没有上传的HTML文件但有链接，使用single-file-cli抓取内容
  else if (tribute.link) {
    try {
      console.log(`开始抓取 webpage: ${tribute.link}`);
      await webpageArchiver.archiveWebpage(tribute);
      console.log(`抓取完成: ${tribute.link}`);
    } catch (error) {
      console.error(`Failed to archive webpage: ${tribute.link}`, error);
      // 即使存档失败也不应该阻止保存元数据
    }
  }

  // 更新archives.json - 这会调用recompileArchivesJson来确保与文件系统同步
  archiveManager.updateArchivesJson(tribute);
};

/**
 * 手动重新编译archives.json，确保与文件系统同步
 * 当需要重新扫描文件系统时调用此函数（如手动删除文件后）
 */
export const recompileArchives = async (): Promise<void> => {
  try {
    // 直接调用archive-manager的重新编译函数
    archiveManager.recompileArchivesJson();
    console.log('Archives recompiled successfully');
  } catch (error) {
    console.error('Failed to recompile archives:', error);
    throw error;
  }
};
