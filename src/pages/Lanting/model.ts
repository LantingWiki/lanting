import { Reducer } from 'umi';
import compiledArchives from '@/assets/archives.json';
import { Archive, Archives, FilterValues } from './data';

export interface StateType {
  compiledArchives: Archives;
  currentArchives: Archive[];
}

export interface ModelType {
  namespace: string;
  state: StateType;
  reducers: {
    queryList: Reducer<StateType>;
  };
}

const filterArchives = (filters: FilterValues, archives: Archive[]) => {
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

const Model: ModelType = {
  namespace: 'lanting',
  state: {
    compiledArchives,
    currentArchives: compiledArchives.archives.slice(),
  },

  reducers: {
    queryList(state, action) {
      const filteredArchives = filterArchives(action.payload.values, compiledArchives.archives);
      return {
        ...state,
        currentArchives: filteredArchives,
      } as StateType;
    },
  },
};

export default Model;
