import React from 'react';
import { DefaultFooter } from '@ant-design/pro-layout';
import { GithubOutlined } from '@ant-design/icons';

export default (
  <DefaultFooter
    copyright={`${new Date().getFullYear()} 兰亭文存`}
    links={[
      {
        key: 'legal',
        title: ' ',
        href: 'https://www.eff.org/cyberspace-independence',
        blankTarget: true,
      },
      {
        key: 'github',
        title: <GithubOutlined />,
        href: 'https://github.com/LantingWiki/lanting',
        blankTarget: true,
      },
      {
        key: 'blog',
        title: '芦柑笔谈',
        href: 'https://blog.wangboyang.com/',
        blankTarget: true,
      },
    ]}
  />
);
