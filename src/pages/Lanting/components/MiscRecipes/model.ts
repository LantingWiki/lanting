import { Effect, Reducer } from 'umi';
import request from '@/utils/request';

export interface StateType {
  miscRecipesMd: string;
  inited: boolean;
}

export interface ModelType {
  namespace: string;
  state: StateType;
  effects: {
    fetch: Effect;
  };
  reducers: {
    put: Reducer<StateType>;
  };
}

const processMdImgSyntax = (md: string) => {
  return md.replace(/!\[\]\((.+?)\)/g, (match, g1) => {
    return `![](https://lanting-public.oss-accelerate.aliyuncs.com/archives/${g1})`;
  });
};

const Model: ModelType = {
  namespace: 'lantingMiscRecipes',
  state: {
    miscRecipesMd: '',
    inited: false,
  },
  effects: {
    *fetch(_, { call, put, select }) {
      const inited = yield select((state: StateType) => state.inited);
      if (inited) {
        return;
      }
      const response = yield call(() => {
        return request(
          'https://lanting-public.oss-accelerate.aliyuncs.com/archives/1000-%E9%9A%8F%E5%9B%AD%E9%A3%9F%E5%8D%95.md',
        );
      });

      yield put({
        type: 'put',
        payload: {
          miscRecipesMd: processMdImgSyntax(response),
        },
      });
    },
  },
  reducers: {
    put(state, action) {
      return {
        inited: true,
        miscRecipesMd: action.payload.miscRecipesMd,
      };
    },
  },
};

export default Model;
