import { MenuDataItem } from '@ant-design/pro-layout';
import { GlobalModelState } from './global';

export { GlobalModelState };

export interface Loading {
  global: boolean;
  effects: { [key: string]: boolean | undefined };
  models: {
    global?: boolean;
    menu?: boolean;
    setting?: boolean;
  };
}

export interface Route extends MenuDataItem {
  routes?: Route[];
}
