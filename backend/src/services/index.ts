// 重新导出所有服务，使其可以从一个中心点访问

// 主服务
export * as tributeService from './tribute.service';

// 专业服务
export * as metadataExtractor from './metadata-extractor.service';
export * as dateUtil from './date-util.service';
export * as archiveManager from './archive-manager.service';
export * as webpageArchiver from './webpage-archiver.service';
export * as tributeQuery from './tribute-query.service';
export * as archiveContent from './archive-content.service';

// 类型，使之更容易导入
import { Tribute } from '../types/tribute.types';
export type { Tribute };
