import { Tribute } from '../types/tribute.types';
import * as singleFileService from './singlefile.service';
import path from 'path';
import fs from 'fs';
import config from '../config';

// In-memory storage for tribute data
// In a real application, this would be replaced with a database
const tributes: Tribute[] = [];

/**
 * 生成唯一的ID
 * 简单实现：获取当前最大ID并加1
 */
function generateUniqueId(): string {
  // 读取当前archives.json
  const archivesJson = getArchivesJson();
  const archiveIds = Object.keys(archivesJson.archives).map(id => parseInt(id, 10));

  // 如果没有ID，从10000开始；否则使用最大ID+1
  const nextId = archiveIds.length > 0 ? Math.max(...archiveIds) + 1 : 10000;
  return nextId.toString();
}

/**
 * 读取archives.json文件
 */
function getArchivesJson(): any {
  // 使用配置文件中的路径
  const archivesPath = path.join(config.archives.rootDir, 'archives.json');

  try {
    if (fs.existsSync(archivesPath)) {
      const rawData = fs.readFileSync(archivesPath, 'utf8');
      return JSON.parse(rawData);
    }
  } catch (error) {
    console.error('Error reading archives.json:', error);
  }

  // 如果文件不存在或读取失败，返回空结构
  return { archives: {}, fieldFreqMap: {} };
}

/**
 * 将数据写入archives.json文件
 */
function saveArchivesJson(archivesData: any): void {
  // 使用配置文件中的路径
  const archivesPath = path.join(config.archives.rootDir, 'archives.json');

  try {
    // 确保archives目录存在
    const archivesDir = path.dirname(archivesPath);
    if (!fs.existsSync(archivesDir)) {
      fs.mkdirSync(archivesDir, { recursive: true });
    }

    // 格式化JSON以便于阅读
    const jsonString = JSON.stringify(archivesData, null, 2);
    fs.writeFileSync(archivesPath, jsonString, 'utf8');
    console.log('Successfully updated archives.json');
  } catch (error) {
    console.error('Error writing archives.json:', error);
    throw error;
  }
}

/**
 * 更新archives.json文件中的数据
 */
function updateArchivesJson(tribute: Tribute): void {
  // 读取当前文件
  const archivesJson = getArchivesJson();

  // 确保tribute有ID
  if (!tribute.id) {
    tribute.id = generateUniqueId();
  }

  // 处理tag字段，确保是数组
  let tags: string[] = [];
  if (typeof tribute.tag === 'string') {
    // 如果是逗号分隔的字符串，拆分并去除空格
    if (tribute.tag.includes(',')) {
      tags = tribute.tag.split(',').map(t => t.trim()).filter(t => t);
    } else {
      // 如果是单个tag，直接添加
      tags = [tribute.tag.trim()];
    }
  } else if (Array.isArray(tribute.tag)) {
    tags = tribute.tag as string[];
  }

  // 处理author字段，确保是数组
  let authors: string[] = [];
  if (typeof tribute.author === 'string') {
    // 如果是逗号分隔的字符串，拆分并去除空格
    if (tribute.author.includes(',')) {
      authors = tribute.author.split(',').map(a => a.trim()).filter(a => a);
    } else {
      // 如果是单个author，直接添加
      authors = [tribute.author.trim()];
    }
  } else if (Array.isArray(tribute.author)) {
    authors = tribute.author as string[];
  }

  // 准备archive对象
  const archive = {
    id: tribute.id,
    title: tribute.title,
    author: authors,
    publisher: tribute.publisher,
    date: tribute.date,
    chapter: tribute.chapter,
    tag: tags,
    remarks: tribute.remarks || '',
    origs: tribute.archivePath ? [path.basename(tribute.archivePath)] : [],
    likes: 0
  };

  // 添加到archives
  archivesJson.archives[tribute.id] = archive;

  // 更新fieldFreqMap
  updateFieldFreqMap(archivesJson, archive);

  // 保存文件
  saveArchivesJson(archivesJson);
}

/**
 * 更新fieldFreqMap统计信息
 */
function updateFieldFreqMap(archivesJson: any, archive: any): void {
  // 确保fieldFreqMap存在
  if (!archivesJson.fieldFreqMap) {
    archivesJson.fieldFreqMap = {};
  }

  // 更新author频率
  if (!archivesJson.fieldFreqMap.author) {
    archivesJson.fieldFreqMap.author = {};
  }

  archive.author.forEach((author: string) => {
    if (archivesJson.fieldFreqMap.author[author]) {
      archivesJson.fieldFreqMap.author[author]++;
    } else {
      archivesJson.fieldFreqMap.author[author] = 1;
    }
  });

  // 可以根据需要添加其他字段的频率统计，如tag、publisher等
}

/**
 * Save a tribute to storage
 * @param tribute The tribute data to save
 */
export const saveTribute = async (tribute: Tribute): Promise<void> => {
  // In a real app, this would be a database call
  tributes.push(tribute);

  // 如果有链接，尝试使用 single-file-cli 抓取内容
  if (tribute.link) {
    try {
      await archiveWebpage(tribute);
    } catch (error) {
      console.error(`Failed to archive webpage: ${tribute.link}`, error);
      // 即使存档失败也不应该阻止保存元数据
    }
  }

  // 更新archives.json
  updateArchivesJson(tribute);
};

/**
 * 使用 single-file-cli 抓取并保存网页
 * @param tribute 文章信息
 */
async function archiveWebpage(tribute: Tribute): Promise<string> {
  try {
    // 确保URL格式正确（添加协议前缀）
    let url = tribute.link;
    if (url && !url.startsWith('http://') && !url.startsWith('https://')) {
      url = 'https://' + url;
    }

    // 生成唯一ID，如果没有的话
    if (!tribute.id) {
      tribute.id = generateUniqueId();
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
        articleInfo
      }
    );

    // 更新 tribute 对象
    tribute.archivePath = result.htmlPath;

    return result.htmlPath;
  } catch (error) {
    console.error(`Error archiving ${tribute.link}:`, error);
    throw error;
  }
}

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
 * This is a mock implementation that would normally fetch data from the link
 * or call an external API to get article information
 * @param link URL of the article to get info about
 */
export const getTributeInfo = async (link: string): Promise<Partial<Tribute>> => {
  // 确保URL格式正确（添加协议前缀）
  let url = link;
  if (url && !url.startsWith('http://') && !url.startsWith('https://')) {
    url = 'https://' + url;
  }

  // 在实际应用中，这里会解析URL或调用外部API来获取文章信息
  console.log(`Fetching info for URL: ${url}`);

  // 简单的模拟响应，用于演示
  return {
    title: '示例文章',
    author: '张三',
    publisher: '示例出版社',
    date: '2025-03-25'
  };
};
