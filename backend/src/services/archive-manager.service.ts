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
 * 按照5位数序号规则生成，从10000开始递增
 */
export function generateUniqueId(): string {
  // 读取当前archives.json
  const archivesJson = getArchivesJson();
  
  // 获取现有ID列表，只过滤出5位数ID（10000-99999）
  const archiveIds = Object.keys(archivesJson.archives)
    .map(id => parseInt(id, 10))
    .filter(id => id >= 10000 && id < 100000);

  console.log(`现有的5位数ID: ${archiveIds.join(', ')}`);
  
  // 如果没有符合条件的ID，从10000开始；否则使用最大ID+1
  let nextId = archiveIds.length > 0 ? Math.max(...archiveIds) + 1 : 10000;
  
  // 确保ID是5位数
  if (nextId >= 100000) {
    console.warn('ID已经达到99999，将从10000重新开始，可能导致ID重复');
    // 寻找未被使用的ID
    nextId = 10000;
    while (archiveIds.includes(nextId) && nextId < 100000) {
      nextId++;
    }
  }
  
  console.log(`生成的新ID: ${nextId}`);
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

  // 确保tribute.archivePath有值
  if (!tribute.archivePath && tribute.id) {
    // 如果没有archivePath但有ID，使用默认的HTML扩展名
    tribute.archivePath = `${tribute.id}.html`;
    console.log(`未提供archivePath，使用默认值: ${tribute.archivePath}`);
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
  // 修改：传递保留当前新增记录的参数，防止重新编译时删除它
  recompileArchivesJson(archivesJson, tribute.id);
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
 * @param archivesJson 当前的archives.json数据
 * @param preserveId 需要保留的ID，即使文件不存在也保留
 */
export function recompileArchivesJson(archivesJson: any = null, preserveId?: string): void {
  console.log('开始重新编译archives.json');
  
  // 如果没有提供archivesJson，则读取当前文件
  if (!archivesJson) {
    archivesJson = getArchivesJson();
  }

  const existingArchives = archivesJson.archives || {};
  const updatedArchives: any = {};
  const fieldFreqMap: any = { author: {}, tag: {}, publisher: {} };

  try {
    // 检查目录是否存在
    if (!fs.existsSync(ORIGS_DIR)) {
      console.error(`ORIGS目录不存在: ${ORIGS_DIR}`);
      fs.mkdirSync(ORIGS_DIR, { recursive: true });
      console.log(`已创建ORIGS目录: ${ORIGS_DIR}`);
    }
    
    // 读取origs目录中的所有文件
    console.log(`读取ORIGS目录: ${ORIGS_DIR}`);
    const origFiles = fs.readdirSync(ORIGS_DIR);
    console.log(`ORIGS目录中找到${origFiles.length}个文件`);

    // 遍历现有archives，检查每个文件是否仍然存在
    let removedCount = 0;
    let retainedCount = 0;
    
    Object.keys(existingArchives).forEach(id => {
      const archive = existingArchives[id];
      
      // 输出调试信息
      console.log(`检查ID ${id} (${archive.title}), 存档文件: [${archive.origs.join(', ')}]`);
      
      const stillExists = archive.origs.some((origFile: string) => {
        const exists = origFiles.includes(origFile);
        if (!exists) {
          console.log(`文件 ${origFile} 不存在于ORIGS目录中`);
        }
        return exists;
      });

      // 如果文件存在或者是需要保留的ID
      if (stillExists || id === preserveId) {
        if (id === preserveId && !stillExists) {
          console.log(`ID ${id} 的文件不存在，但是由于是正在保存的记录，将被保留`);
        }
        
        // 文件仍然存在或需要强制保留
        updatedArchives[id] = archive;
        retainedCount++;

        // 更新频率统计
        updateFieldFreqMapForRecompile(fieldFreqMap, archive);
      } else {
        console.log(`File(s) ${archive.origs.join(', ')} no longer exist, removing archive ${id}`);
        removedCount++;
      }
    });

    console.log(`重新编译结果: 保留 ${retainedCount} 个记录, 移除 ${removedCount} 个记录`);

    // 更新archives.json
    archivesJson.archives = updatedArchives;
    archivesJson.fieldFreqMap = fieldFreqMap;
    saveArchivesJson(archivesJson);
    console.log('Archives.json recompiled successfully');
  } catch (error) {
    console.error('Error recompiling archives.json:', error);
    throw error;
  }
}

/**
 * 为重新编译更新频率统计
 */
function updateFieldFreqMapForRecompile(fieldFreqMap: any, archive: any): void {
  // 更新author频率
  if (archive.author && Array.isArray(archive.author)) {
    archive.author.forEach((author: string) => {
      if (!author) return;
      
      if (fieldFreqMap.author[author]) {
        fieldFreqMap.author[author]++;
      } else {
        fieldFreqMap.author[author] = 1;
      }
    });
  }

  // 更新tag频率
  if (archive.tag && Array.isArray(archive.tag)) {
    archive.tag.forEach((tag: string) => {
      if (!tag) return;
      
      if (fieldFreqMap.tag[tag]) {
        fieldFreqMap.tag[tag]++;
      } else {
        fieldFreqMap.tag[tag] = 1;
      }
    });
  }

  // 更新publisher频率
  if (archive.publisher) {
    const publisher = archive.publisher;
    if (fieldFreqMap.publisher[publisher]) {
      fieldFreqMap.publisher[publisher]++;
    } else {
      fieldFreqMap.publisher[publisher] = 1;
    }
  }
}
