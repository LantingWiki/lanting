import { Tribute } from '../types/tribute.types';
import axios from 'axios';
import * as metadataExtractor from './metadata-extractor.service';

// In-memory storage for tribute data
// In a real application, this would be replaced with a database
const tributes: Tribute[] = [];

/**
 * Get all tributes
 * @returns Array of all tributes
 */
export const getAllTributes = async (): Promise<Tribute[]> => {
  // In a real app, this would be a database call
  return [...tributes];
};

/**
 * Get tribute info from a link
 * 从链接获取文章信息，尝试提取元数据
 * @param link URL of the article to get info about
 */
export const getTributeInfo = async (link: string): Promise<Partial<Tribute>> => {
  try {
    // 确保URL格式正确（添加协议前缀）
    let url = link;
    if (url && !url.startsWith('http://') && !url.startsWith('https://')) {
      url = 'https://' + url;
    }

    console.log(`Fetching info for URL: ${url}`);

    // 获取页面内容
    const response = await axios.get(url, {
      headers: {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
        'Accept-Language': 'en-US,en;q=0.5'
      },
      timeout: 10000 // 10秒超时
    });

    // 确保响应数据是字符串
    const htmlContent = typeof response.data === 'string' ? response.data : String(response.data);

    // 从HTML内容提取元数据
    const metadata = await metadataExtractor.extractMetadataFromHtml(htmlContent);

    console.log('Extracted metadata:', metadata);

    return metadata;
  } catch (error) {
    console.error(`Error fetching info for link: ${link}`, error);
    // 如果发生错误，返回空元数据
    return {};
  }
};

/**
 * 从HTML文件中提取元数据
 * @param filePath HTML文件的路径
 * @returns 提取的元数据
 */
export const extractHtmlInfo = async (filePath: string): Promise<Partial<Tribute>> => {
  try {
    const fs = require('fs');
    const htmlContent = fs.readFileSync(filePath, 'utf8');

    // 使用metadata-extractor服务提取元数据
    const metadata = await metadataExtractor.extractMetadataFromHtml(htmlContent);

    // 将文件路径添加到元数据中，以便后续处理
    return {
      ...metadata,
      uploadedHtmlFile: filePath
    };
  } catch (error) {
    console.error(`Error extracting info from HTML file: ${filePath}`, error);
    return {};
  }
};
