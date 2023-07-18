// https://umijs.org/config/
import { defineConfig, IConfig } from 'umi';

import defaultSettings from './defaultSettings';
import proxy from './proxy';

const { REACT_APP_ENV } = process.env;
export default defineConfig(({
  externals: {
    react: 'window.React',
    'react-dom': 'window.ReactDOM',
  },
  hash: false,
  antd: {},
  dva: {
    hmr: true,
  },
  targets: {
    ie: 11,
  },
  // umi routes: https://umijs.org/docs/routing
  routes: [
    {
      path: '/lanting/tribute',
      component: '../layouts/UserLayout',
      routes: [
        {
          path: '/lanting/tribute',
          component: './Tribute',
        },
      ],
    },
    {
      path: '/',
      component: '../layouts/LoadingLayout',
      routes: [
        {
          path: '/',
          component: '../layouts/BasicLayout',
          routes: [
            {
              path: '/',
              redirect: '/lanting',
            },
            {
              name: '兰亭文存',
              path: '/lanting',
              icon: 'BookOutlined',
              routes: [
                { path: '/lanting', component: './Lanting' },
                { path: '/lanting/archive/:id', component: './Lanting/components/ArchivePage' },
              ],
            },
            {
              name: '网络国家',
              path: 'https://www.thenetworkstate-zh.com/foreword/',
              icon: 'GatewayOutlined',
            },
            {
              name: '芦柑笔谈',
              path: 'https://blog.wangboyang.com',
              icon: 'EditOutlined',
            },
            {
              component: './404',
            },
          ],
        },
        {
          component: './404',
        },
      ],
    },
    {
      component: './404',
    },
  ],
  // Theme for antd: https://ant.design/docs/react/customize-theme-cn
  theme: {
    // ...darkTheme,
    'primary-color': defaultSettings.primaryColor,
  },
  publicPath: '/',
  runtimePublicPath: true,
  dynamicImport: {
    loading: '@ant-design/pro-layout/lib/PageLoading',
  },
  // @ts-ignore
  title: false,
  ignoreMomentLocale: true,
  proxy: proxy[REACT_APP_ENV || 'dev'],
  manifest: {
    basePath: '/',
  },
  copy: [
    {
      from: 'archives/archives.json',
      to: 'archives/archives.json',
    },
    {
      from: 'archives/1000-随园食单.md',
      to: 'archives/1000-随园食单.md',
    },
  ],
} as unknown) as IConfig);
// TODO umi fix this stupid casting
