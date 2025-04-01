import path from 'path';
import fs from 'fs';
import config from '../config';
import { Tribute } from '../types/tribute.types';

// 使用与其他服务相同的路径配置
const ARCHIVES_DIR = config.archives.rootDir;
const ORIGS_DIR = path.join(ARCHIVES_DIR, config.archives.subdirs.origs);
const COMMENTS_DIR = path.join(ARCHIVES_DIR, config.archives.subdirs.comments);

// 确保目录存在
if (!fs.existsSync(ARCHIVES_DIR)) {
  fs.mkdirSync(ARCHIVES_DIR, { recursive: true });
}

if (!fs.existsSync(ORIGS_DIR)) {
  fs.mkdirSync(ORIGS_DIR, { recursive: true });
}

if (!fs.existsSync(COMMENTS_DIR)) {
  fs.mkdirSync(COMMENTS_DIR, { recursive: true });
}

/**
 * 生成唯一的ID
 * 简单实现：获取当前最大ID并加1
 */
export function generateUniqueId(): string {
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
export function getArchivesJson(): any {
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
export function saveArchivesJson(archivesData: any): void {
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
export function updateArchivesJson(tribute: Tribute): void {
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

  // 更新整个archives.json以反映当前文件系统状态
  recompileArchivesJson(archivesJson);
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
 * 扫描存档目录并重新编译archives.json
 * 这确保如果有文件被删除，archives.json会得到更新
 */
export function recompileArchivesJson(archivesJson: any = null): void {
  // 如果没有提供archivesJson，则读取当前文件
  if (!archivesJson) {
    archivesJson = getArchivesJson();
  }

  const existingArchives = archivesJson.archives || {};
  const updatedArchives: any = {};
  const fieldFreqMap: any = { author: {}, tag: {}, publisher: {} };

  try {
    // 读取origs目录中的所有文件
    const origFiles = fs.readdirSync(ORIGS_DIR);

    // 遍历现有archives，检查每个文件是否仍然存在
    Object.keys(existingArchives).forEach(id => {
      const archive = existingArchives[id];
      const stillExists = archive.origs.some((origFile: string) =>
        origFiles.includes(origFile)
      );

      if (stillExists) {
        // 文件仍然存在，保留此archive
        updatedArchives[id] = archive;

        // 更新频率统计
        if (Array.isArray(archive.author)) {
          archive.author.forEach((author: string) => {
            fieldFreqMap.author[author] = (fieldFreqMap.author[author] || 0) + 1;
          });
        }

        if (Array.isArray(archive.tag)) {
          archive.tag.forEach((tag: string) => {
            fieldFreqMap.tag[tag] = (fieldFreqMap.tag[tag] || 0) + 1;
          });
        }

        if (archive.publisher) {
          fieldFreqMap.publisher[archive.publisher] = (fieldFreqMap.publisher[archive.publisher] || 0) + 1;
        }
      } else {
        console.log(`File(s) ${archive.origs.join(', ')} no longer exist, removing archive ${id}`);
      }
    });

    // 构建更新后的archives.json内容
    const updatedArchivesJson = {
      archives: updatedArchives,
      fieldFreqMap: fieldFreqMap
    };

    // 保存更新后的文件
    saveArchivesJson(updatedArchivesJson);

    console.log('Archives.json recompiled successfully');
  } catch (error) {
    console.error('Error recompiling archives.json:', error);
    throw error;
  }
}
