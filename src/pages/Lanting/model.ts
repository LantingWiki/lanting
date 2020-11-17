import { Effect, Reducer } from 'umi';
import request from '@/utils/request';
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
    like: Effect;
  };
  reducers: {
    putList: Reducer<StateType>;
    putLikes: Reducer<StateType>;
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
    if ((archive.likes || 0) < filters.likesMin || (archive.likes || 0) > filters.likesMax) {
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
        return request('/archives/archives.json');
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

      const responseLikes = yield call(() => {
        return request('https://lanting.wiki/api/user/like/read?articleId=-1');
      });
      if (responseLikes && responseLikes.data) {
        yield put({
          type: 'putLikes',
          payload: {
            likesMap: responseLikes.data,
          },
        });
      }
    },
    *like(action, { call, put }) {
      const { archive } = action.payload;
      const { isLike } = action.payload;

      const likesMap = {};
      const newLikes = (archive.likes || 0) + (isLike ? 1 : -1);
      likesMap[+archive.id] = newLikes;

      yield put({
        type: 'putLikes',
        payload: {
          likesMap,
        },
      });

      yield call(() => {
        return request('https://lanting.wiki/api/user/like/create', {
          method: 'post',
          data: {
            articleId: archive.id,
            like: isLike,
          },
        });
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
    putLikes(state, action) {
      // here I need to
      // 1. update the archives that have likes
      // 2. notify by changing that specific archive
      // 3. find a way to notify parents, so that it propagates downwards
      // 一个可能性: 初始化的时候等likes回来; 后续更新写到每个archive的model里
      const { currentArchives } = state!;
      const { likesMap } = action.payload;

      const newCurrentArchives = new ChapterArchives();
      Object.keys(currentArchives).forEach((c) => {
        newCurrentArchives[c] = currentArchives[c].slice();
        currentArchives[c].forEach((a: Archive, idx: number) => {
          const curId = +a.id;
          if (curId in likesMap) {
            const newArchive = { ...a };
            newArchive.likes = likesMap[curId];
            newCurrentArchives[c] = [
              ...newCurrentArchives[c].slice(0, idx),
              newArchive,
              ...newCurrentArchives[c].slice(idx + 1),
            ];
          }
        });
      });

      return {
        ...state,
        compiledArchives: state!.compiledArchives,
        currentArchives: newCurrentArchives,
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
