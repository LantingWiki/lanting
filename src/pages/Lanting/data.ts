export const CHAPTERS = ['本纪', '世家', '列传', '游侠', '群像'];

export type Chapter = '本纪' | '世家' | '列传' | '游侠' | '群像' | '随园食单' | string;

export class ChapterArchives {
  '本纪': Archive[] = [];

  '世家': Archive[] = [];

  '列传': Archive[] = [];

  '游侠': Archive[] = [];

  '群像': Archive[] = [];
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
  archives: Archive[] = [];

  fieldFreqMap: FieldFreqMap = new FieldFreqMap();
}

export interface FilterValues {
  author: string[];
  date: string[];
  publisher: string[];
  tag: string[];
  likesMin: number;
  likesMax: number;
}
