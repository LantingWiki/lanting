export type Chapter = '本纪' | '世家' | '列传' | '群像' | '随园食单' | string;

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

  hasOrig: boolean = false;
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
}
