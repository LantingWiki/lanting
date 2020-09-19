import React from 'react';
import { List, Tag } from 'antd';
import { BankOutlined, EditOutlined } from '@ant-design/icons';
import ChapterCard from '../ChapterCard';
import ArchiveListContent from '../ArchiveListContent';
import { Archive } from '../../data';
import styles from './index.less';

export interface ArchiveChapterProps {
  chapter: string;
  archives: Archive[];
}

const renderArchive = (item: Archive) => (
  <List.Item
    key={item.id}
    actions={[
      <h4 key="edit">
        <EditOutlined style={{ marginRight: 4 }} />
        {item.author.map((a) => ` ${a}`)}
      </h4>,
      <div>
        <BankOutlined style={{ marginRight: 8 }} />
        {item.publisher}
      </div>,
    ]}
  >
    <List.Item.Meta
      title={
        item.hasOrig ? (
          <a className={styles.listItemMetaTitle} href="#" target="_blank">
            {item.title}
          </a>
        ) : (
          <span>{item.title}</span>
        )
      }
      description={
        <span>
          {item.tag.map((t) => (
            <Tag key={t}>{t}</Tag>
          ))}
        </span>
      }
    />
    <ArchiveListContent archive={item} />
  </List.Item>
);

const ArchiveChapter: React.FC<ArchiveChapterProps> = ({ chapter, archives }) => (
  <ChapterCard title={<h2>{chapter}</h2>} defaultActive>
    <List<Archive>
      size="large"
      rowKey="id"
      itemLayout="vertical"
      dataSource={archives}
      renderItem={renderArchive}
    />
  </ChapterCard>
);

export default ArchiveChapter;
