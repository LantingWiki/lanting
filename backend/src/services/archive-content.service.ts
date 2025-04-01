import fs from 'fs';
import path from 'path';
import config from '../config';

// 使用与其他服务相同的路径配置
const ARCHIVES_DIR = config.archives.rootDir;
const ORIGS_DIR = path.join(ARCHIVES_DIR, config.archives.subdirs.origs);

/**
 * 根据文件名获取存档内容
 * @param filename 存档文件名
 * @returns 存档HTML内容
 */
export async function getArchivedContent(filename: string): Promise<string> {
  try {
    // 构建文件路径
    const filePath = path.join(ORIGS_DIR, filename);

    // 检查文件是否存在
    if (!fs.existsSync(filePath)) {
      throw new Error(`Archived file not found: ${filename}`);
    }

    // 读取存档文件内容
    return fs.readFileSync(filePath, 'utf8');
  } catch (error) {
    console.error(`Error getting archived content: ${filename}`, error);
    throw error;
  }
}

/**
 * 获取存档文件路径
 * @param filename 存档文件名
 * @returns 存档文件的完整路径
 */
export function getArchivedFilePath(filename: string): string {
  return path.join(ORIGS_DIR, filename);
}

/**
 * 检查存档文件是否存在
 * @param filename 存档文件名
 * @returns 布尔值，表示文件是否存在
 */
export function archivedFileExists(filename: string): boolean {
  const filePath = path.join(ORIGS_DIR, filename);
  return fs.existsSync(filePath);
}
