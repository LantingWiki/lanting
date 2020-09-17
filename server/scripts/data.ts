export interface Member {
  avatar: string;
  name: string;
  id: string;
}

export interface ListItemDataType {
  id: string;
  owner: string;
  title: string;
  avatar: string;
  cover: string;
  status: 'normal' | 'exception' | 'active' | 'success';
  percent: number;
  logo: string;
  href: string;
  body?: any;
  updatedAt: number;
  createdAt: number;
  subDescription: string;
  description: string;
  activeUser: number;
  newUser: number;
  star: number;
  like: number;
  message: number;
  content: string;
  members: Member[];
}

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
