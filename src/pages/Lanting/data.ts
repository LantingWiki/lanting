export const CHAPTERS = ['本纪', '世家', '搜神', '列传', '游侠', '群像'];

export type Chapter = '本纪' | '世家' | '搜神' | '列传' | '游侠' | '群像' | '随园食单' | string;

export class ChapterArchives {
  '本纪': number[] = [];

  '世家': number[] = [];

  '搜神': number[] = [];

  '列传': number[] = [];

  '游侠': number[] = [];

  '群像': number[] = [];
}

export class FieldFreqMap {
  author: {
    [key: string]: number;
  } = {};

  publisher: {
    [key: string]: number;
  } = {};

  date: {
    [key: string]: number;
  } = {};

  tag: {
    [key: string]: number;
  } = {};
}

export class Archive {
  id: string = '';

  title: string = '';

  author: string[] = [];

  publisher: string = '';

  date: string = '';

  chapter: Chapter = '列传';

  tag: string[] = [];

  remarks: string = '';

  origs: false | string[] = false;

  likes: number = 0;
}

export class Archives {
  archives: {
    [key: number]: Archive;
  } = {};

  fieldFreqMap: FieldFreqMap = new FieldFreqMap();
}

export interface FilterValues {
  search: string;
  confirmSearch: string;
  author: string[];
  date: string[];
  publisher: string[];
  tag: string[];
  likesMin: number;
  likesMax: number;
}

export interface SearchList {
  keyword: string;
  count: number;
}
