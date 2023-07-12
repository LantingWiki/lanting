import React from 'react';
import { List, Tag } from 'antd';
import { BankOutlined, EditOutlined, BookOutlined, CalendarOutlined } from '@ant-design/icons';
import Highlighter from 'react-highlight-words';
import { CDN_DOMAIN, toChineseNumbers } from '@/utils/utils';
import ChapterCard from '../ChapterCard';
import ArchiveListContent from '../ArchiveListContent';
import { Archive, Archives } from '../../data';
import styles from './index.less';

export interface ArchiveChapterProps {
  chapter: string;
  compiledArchives: Archives;
  archiveIds: number[];
  search: String;
}

const renderOrig = (item: Archive) => {
  if (!item.origs || item.origs.length === 0) {
    return null;
  }
  return item.origs.map((orig) => (
    <a
      className={styles.listItemMetaTitle}
      href={`${CDN_DOMAIN}/archives/origs/${orig}`}
      rel="noreferrer"
      target="_blank"
    >
      <BookOutlined />
    </a>
  ));
};

const renderArchive = (search: any, item: Archive) => (
  <List.Item
    key={item.id}
    actions={[
      <h4 key="edit">
        <EditOutlined style={{ marginRight: 4 }} />
        {item.author.map((a) => (
          <Highlighter searchWords={[search]} autoEscape textToHighlight={`${a} `} />
        ))}
      </h4>,
      <div>
        <BankOutlined style={{ marginRight: 8 }} />
        <Highlighter searchWords={[search]} autoEscape textToHighlight={item.publisher} />
      </div>,
      <div>
        <CalendarOutlined style={{ marginRight: 8 }} />
        <Highlighter searchWords={[search]} autoEscape textToHighlight={item.date} />
      </div>,
    ]}
  >
    <List.Item.Meta
      title={
        <>
          <a href={`/lanting/archive/${item.id}`} target="_blank" rel="noreferrer">
            <Highlighter searchWords={[search]} autoEscape textToHighlight={item.title} />
          </a>
          {renderOrig(item)}
        </>
      }
      description={
        <span>
          {item.tag.map((t) => (
            <Tag key={t}>
              <Highlighter searchWords={[search]} autoEscape textToHighlight={t} />
            </Tag>
          ))}
        </span>
      }
    />
    <ArchiveListContent archive={item} search={search} />
  </List.Item>
);

const ArchiveChapter: React.FC<ArchiveChapterProps> = ({
  chapter,
  archiveIds,
  compiledArchives,
  search,
}) => {
  const archives = archiveIds.map((id) => compiledArchives.archives[id]);
  return (
    <ChapterCard title={
        <h2>
          {chapter}
          <span className="chapter-archive-count">{`凡${toChineseNumbers('' + archives.length)}篇`}</span>
        </h2>
      }
      defaultActive={false}>
      <List<Archive>
        pagination={{
          size: 'small',
          showSizeChanger: false,
          showQuickJumper: false,
          pageSize: 6,
        }}
        className={styles.list}
        size="large"
        rowKey="id"
        itemLayout="vertical"
        locale={{ emptyText: '前不见古人' }}
        split
        grid={{ gutter: 0, column: 2, sm: 1, xs: 1 }}
        dataSource={archives}
        renderItem={(item) => renderArchive(search, item)}
      />
    </ChapterCard>
  );
};

export default ArchiveChapter;
