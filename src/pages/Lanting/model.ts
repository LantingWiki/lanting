import { Effect, Reducer } from 'umi';
import { Archive, Archives, ChapterArchives, CHAPTERS, FilterValues } from './data';

export interface StateType {
  compiledArchives: Archives;
  currentArchives: ChapterArchives;
}

export interface ModelType {
  namespace: string;
  state: StateType;
  effects: {
    fetch: Effect;
  };
  reducers: {
    putList: Reducer<StateType>;
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

let initedChapterArchives = new ChapterArchives();
let compiledArchives = new Archives();
let inited = false;

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
  effects: {
    *fetch(_, { call, put }) {
      if (inited) {
        return;
      }
      inited = true;
      const response = yield call(() => {
        return import('@/assets/archives.json');
      });
      compiledArchives = response;
      initedChapterArchives = initArchives(response);
      yield put({
        type: 'putList',
        payload: {
          compiledArchives,
          currentArchives: initedChapterArchives,
        },
      });
    },
  },
  reducers: {
    putList(state, action) {
      return {
        ...state,
        compiledArchives: action.payload.compiledArchives,
        currentArchives: action.payload.currentArchives,
      };
    },
    queryList(state, action) {
      const filteredArchives = filterArchives(action.payload.values);
      return {
        ...state,
        currentArchives: filteredArchives,
      } as StateType;
    },
  },
};

export default Model;
