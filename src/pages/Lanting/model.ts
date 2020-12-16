import { Effect, Reducer } from 'umi';
import request from '@/utils/request';
import { shuffleByWeek } from '@/utils/utils';
import { Archives, ChapterArchives, CHAPTERS, FilterValues, SearchList } from './data';

const sortByLikes = (arr: number[], archives: Archives) => {
  return arr
    .slice()
    .sort(
      (a: number, b: number) =>
        (archives.archives[b].likes || 0) - (archives.archives[a].likes || 0),
    );
};

export interface StateType {
  compiledArchives: Archives;
  currentArchives: ChapterArchives;
  confirmSearch: string;
  searchLists: SearchList[];
}

export interface ModelType {
  namespace: string;
  state: StateType;
  effects: {
    fetch: Effect;
    like: Effect;
    getLikes: Effect;
    getSearchList: Effect;
    saveSearch: Effect;
  };
  reducers: {
    putList: Reducer<StateType>;
    putLikes: Reducer<StateType>;
    queryList: Reducer<StateType>;
    putSearchList: Reducer<StateType>;
  };
}

const initArchives = (archives: Archives) => {
  const chapterArchives = new ChapterArchives();
  CHAPTERS.forEach((c) => {
    chapterArchives[c] = Object.keys(archives.archives).filter(
      (id) => archives.archives[id].chapter === c,
    );
    chapterArchives[c] = shuffleByWeek(chapterArchives[c]);
  });
  return chapterArchives;
};

let initedChapterArchives = new ChapterArchives();
const compiledArchives = new Archives();
let inited = false;

const filterOneChapterArchives = (
  filters: FilterValues,
  archiveIds: number[],
  archives: Archives,
) => {
  const results = archiveIds.filter((archiveId) => {
    const archive = archives.archives[archiveId];
    if (
      !archive.author.some((a) => a.includes(filters.confirmSearch)) &&
      !archive.chapter.includes(filters.confirmSearch) &&
      !archive.date.includes(filters.confirmSearch) &&
      !archive.id.includes(filters.confirmSearch) &&
      !archive.publisher.includes(filters.confirmSearch) &&
      !archive.remarks.includes(filters.confirmSearch) &&
      !archive.tag.some((a) => a.includes(filters.confirmSearch)) &&
      !archive.title.includes(filters.confirmSearch)
    ) {
      return false;
    }
    if (!filters.date.includes('all') && !filters.date.includes(archive.date)) {
      return false;
    }
    if (!filters.publisher.includes('all') && !filters.publisher.includes(archive.publisher)) {
      return false;
    }
    if (
      !filters.author.includes('all') &&
      !filters.author.some((a) => archive.author.some((b) => b === a))
    ) {
      return false;
    }
    if (
      !filters.tag.includes('all') &&
      !filters.tag.some((a) => archive.tag.some((b) => b === a))
    ) {
      return false;
    }
    if ((archive.likes || 0) < filters.likesMin || (archive.likes || 0) > filters.likesMax) {
      return false;
    }
    return true;
  });
  return sortByLikes(results, archives);
};

const filterArchives = (filters: FilterValues, archives: Archives) => {
  const chapterArchives = new ChapterArchives();
  CHAPTERS.forEach((c) => {
    chapterArchives[c] = filterOneChapterArchives(filters, initedChapterArchives[c], archives);
  });
  return chapterArchives;
};

const Model: ModelType = {
  namespace: 'lanting',
  state: {
    compiledArchives,
    currentArchives: initedChapterArchives,
    confirmSearch: '',
    searchLists: [],
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
      initedChapterArchives = initArchives(response);

      yield put({
        type: 'putList',
        payload: {
          compiledArchives: response,
          currentArchives: initedChapterArchives,
        },
      });

      yield put({
        type: 'getLikes',
      });

      yield put({
        type: 'getSearchList',
      });
    },
    *getLikes(_, { call, put }) {
      const responseLikes = yield call(() => {
        return request('https://lanting.wiki/api/archive/like/read?articleId=-1');
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
    *getSearchList(_, { call, put }) {
      const responseSearchList = yield call(() => {
        return request('https://lanting.wiki/api/archive/search/keyword/read');
      });
      const searchLists = [];
      for (let i = 0; i < responseSearchList.data.length; i++) {
        const { keyword, searchCount } = responseSearchList.data[i];
        const newSearchList = { keyword, count: searchCount };
        searchLists.push(newSearchList);
      }
      if (responseSearchList && responseSearchList.data) {
        yield put({
          type: 'putSearchList',
          payload: {
            searchLists,
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
        return request('https://lanting.wiki/api/archive/like/create', {
          method: 'post',
          data: {
            articleId: archive.id,
            like: isLike,
          },
        });
      });
    },
    *saveSearch(action, { call, put }) {
      const { keyword, searchLists } = action.payload;
      const index = searchLists.map((x: { keyword: any }) => x.keyword).indexOf(keyword);
      if (index < 0) {
        searchLists.push({ keyword, count: 1 });
      } else {
        searchLists[index].count += 1;
      }
      yield put({
        type: 'putSearchList',
        payload: {
          searchLists,
        },
      });
      yield call(() => {
        return request('https://lanting.wiki/api/archive/search/keyword/create', {
          method: 'post',
          data: keyword,
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
      } as StateType;
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
      const newCompiledArchives = { ...state!.compiledArchives };
      newCompiledArchives.archives = { ...state!.compiledArchives.archives };

      Object.keys(likesMap).forEach((id) => {
        newCompiledArchives.archives[id] = { ...newCompiledArchives.archives[id] };
        newCompiledArchives.archives[id].likes = likesMap[id];
      });

      Object.keys(currentArchives).forEach((chapter) => {
        newCurrentArchives[chapter] = [
          ...sortByLikes(currentArchives[chapter], newCompiledArchives),
        ];
      });

      return {
        ...state,
        compiledArchives: newCompiledArchives,
        currentArchives: newCurrentArchives,
      } as StateType;
    },
    queryList(state, action) {
      const filteredArchives = filterArchives(
        action.payload.values,
        state?.compiledArchives || compiledArchives,
      );
      return {
        ...state,
        currentArchives: filteredArchives,
        confirmSearch: action.payload.values.confirmSearch,
      } as StateType;
    },
    putSearchList(state, action) {
      return {
        ...state,
        searchLists: action.payload.searchLists,
      } as StateType;
    },
  },
};

export default Model;
