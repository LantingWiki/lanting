// https://umijs.org/config/
import { defineConfig } from 'umi';

import defaultSettings from './defaultSettings';
import proxy from './proxy';

const { REACT_APP_ENV } = process.env;
export default defineConfig({
  externals: {
    react: 'window.React',
    'react-dom': 'window.ReactDOM',
  },
  hash: true,
  antd: {},
  dva: {
    hmr: true,
  },
  targets: {
    ie: 11,
  },
  // umi routes: https://umijs.org/docs/routing
  routes: [
    // {
    //   path: '/user',
    //   component: '../layouts/UserLayout',
    //   routes: [
    //     {
    //       name: 'login',
    //       path: '/user',
    //       component: './User',
    //     },
    //   ],
    // },
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
              name: '兰亭已矣',
              path: '/lanting',
              icon: 'BookOutlined',
              component: './Lanting',
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
  publicPath: '/public/',
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
      from: 'archives',
      to: 'archives',
    },
  ],
});
