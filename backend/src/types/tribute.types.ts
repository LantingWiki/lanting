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
}
