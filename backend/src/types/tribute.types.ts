/**
 * Tribute data interface
 */
export interface Tribute {
  id?: string;
  link: string;
  title: string;
  author: string;
  publisher: string;
  date: string; // 存储日期格式(YYYY-MM-DD)
  chapter: string;
  tag: string;
  remarks: string;
  archivePath?: string; // 存储网页存档的路径
  uploadedHtmlFile?: string; // 手动上传的HTML文件路径
  uploadedFile?: string; // 统一的上传文件路径（替代上述三个属性）
  fileType?: string; // 文件类型：html、pdf、jpg、png等
  summary?: string; // 网页内容摘要
  keywords?: { // 关键词数据
    predefined: string[];
    extracted: string[];
  };
}
