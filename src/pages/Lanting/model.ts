import { Reducer } from 'umi';
import compiledArchives from '@/assets/archives.json';
import { Archives } from './data';

export interface StateType {
  archives: Archives;
}

export interface ModelType {
  namespace: string;
  state: StateType;
  reducers: {
    queryList: Reducer<StateType>;
  };
}

const Model: ModelType = {
  namespace: 'lanting',
  state: {
    archives: compiledArchives,
  },

  reducers: {
    queryList(state, action) {
      console.log('XXXTEMP', action);
      return {
        ...state,
      } as StateType;
    },
  },
};

export default Model;
