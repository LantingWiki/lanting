import { Reducer } from 'umi';
import compiledArchives from '@/assets/archives.json';
import { Archive, Archives, ChapterArchives, CHAPTERS, FilterValues } from './data';

export interface StateType {
  compiledArchives: Archives;
  currentArchives: ChapterArchives;
}

export interface ModelType {
  namespace: string;
  state: StateType;
  reducers: {
    queryList: Reducer<StateType>;
  };
}

const initArchives = (archives: Archives) => {
  const chapterArchives = new ChapterArchives();
  CHAPTERS.forEach((c) => {
    chapterArchives[c] = archives.archives.filter((a) => a.chapter === c);
  });
  return chapterArchives;
};

const initedChapterArchives = initArchives(compiledArchives);

const filterOneChapterArchives = (filters: FilterValues, archives: Archive[]) => {
  const results = archives.filter((archive) => {
    if (!filters.date.includes('all') && !filters.date.includes(archive.date)) {
      return false;
    }
    if (!filters.publisher.includes('all') && !filters.publisher.includes(archive.publisher)) {
      return false;
    }
    if (
      !filters.author.includes('all') &&
      !archive.author.some((a) => filters.author.includes(a))
    ) {
      return false;
    }
    if (!filters.tag.includes('all') && !archive.tag.some((a) => filters.tag.includes(a))) {
      return false;
    }
    return true;
  });
  return results;
};

const filterArchives = (filters: FilterValues) => {
  const chapterArchives = new ChapterArchives();
  CHAPTERS.forEach((c) => {
    chapterArchives[c] = filterOneChapterArchives(filters, initedChapterArchives[c]);
  });
  return chapterArchives;
};

const Model: ModelType = {
  namespace: 'lanting',
  state: {
    compiledArchives,
    currentArchives: initedChapterArchives,
  },

  reducers: {
    queryList(state, action) {
      console.log('XXXTEMP', 1);
      const filteredArchives = filterArchives(action.payload.values);
      return {
        ...state,
        currentArchives: filteredArchives,
      } as StateType;
    },
  },
};

export default Model;
