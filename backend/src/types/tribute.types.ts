/**
 * Tribute data interface
 */
export interface Tribute {
  id?: string;
  link: string;
  title: string;
  author: string;
  publisher: string;
  date: string;
  chapter: string;
  tag: string;
  remarks: string;
  archivePath?: string; // 存储网页存档的路径
}
