import React, { FC, useEffect } from 'react';
import { PageContainer, PageLoading } from '@ant-design/pro-layout';
import { Card, List, Tag } from 'antd';
import { BankOutlined, BookOutlined, CalendarOutlined, EditOutlined } from '@ant-design/icons';
import { connect, Dispatch, Redirect } from 'umi';
import { Archive, Archives } from '../../data';
import ArchiveListContent from '../ArchiveListContent';

import styles from './index.less';
import { StateType } from '../../model';

const renderOrig = (item: Archive) => {
  if (!item.origs || item.origs.length === 0) {
    return null;
  }
  return item.origs.map((orig) => (
    <a
      className={styles.listItemMetaTitle}
      href={`https://lanting-public.oss-accelerate.aliyuncs.com/archives/origs/${orig}`}
      rel="noreferrer"
      target="_blank"
    >
      <BookOutlined />
    </a>
  ));
};

const renderArchive = (search: string, item: Archive) => (
  <List.Item
    key={item.id}
    actions={[
      <h4 key="edit">
        <EditOutlined style={{ marginRight: 4 }} />
        {item.author.join(' ')}
      </h4>,
      <div>
        <BankOutlined style={{ marginRight: 8 }} />
        {item.publisher}
      </div>,
      <div>
        <CalendarOutlined style={{ marginRight: 8 }} />
        {item.date}
      </div>,
    ]}
  >
    <List.Item.Meta
      title={
        <>
          <span>{item.title}</span>
          {renderOrig(item)}
        </>
      }
      description={
        <span>
          {item.tag.map((t) => (
            <Tag key={t}>{t}</Tag>
          ))}
        </span>
      }
    />
    <ArchiveListContent archive={item} search={search} />
  </List.Item>
);

const findFromArchives = (match: RouteMatch | undefined, compiledArchives: Archives) => {
  const id = match?.params?.id;
  if (!id) {
    return null;
  }
  return compiledArchives.archives[id];
};

interface RouteMatch {
  params: {
    id: string;
  };
}

interface ArchivePageProps {
  dispatch: Dispatch;
  lanting: StateType;
  loading: boolean;
  match: RouteMatch;
  search: string;
}

const ArchivePage: FC<ArchivePageProps> = ({
  dispatch,
  lanting: { compiledArchives },
  search,
  match,
}) => {
  useEffect(() => {
    dispatch({
      type: 'lanting/fetch',
    });
  }, []);

  if (!Object.keys(compiledArchives?.archives).length) {
    return (
      <PageContainer
        title="兰亭文存"
        className={styles.pcontainer}
        content={<div className="ant-collapse-header">兰亭已矣, 梓泽丘墟. 何处世家? 几人游侠?</div>}
      >
        <PageLoading />
      </PageContainer>
    );
  }

  const archive: Archive | null = findFromArchives(match, compiledArchives);
  if (!archive) {
    return <Redirect to="/404" />;
  }

  document.title = `兰亭文存 - ${archive.title}`;
  return (
    <PageContainer
      title="兰亭文存"
      className={styles.pcontainer}
      content={<div className="ant-collapse-header">兰亭已矣, 梓泽丘墟. 何处世家? 几人游侠?</div>}
    >
      <Card className={styles.chaptercard} bordered>
        <List<Archive>
          className={styles.list}
          size="large"
          rowKey="id"
          itemLayout="vertical"
          locale={{ emptyText: '前不见古人' }}
          split
          grid={{ gutter: 0, column: 1, sm: 1, xs: 1 }}
          dataSource={[archive]}
          renderItem={(item) => renderArchive(search, item)}
        />
      </Card>
    </PageContainer>
  );
};

export default connect(
  ({
    lanting,
    loading,
  }: {
    lanting: StateType;
    loading: { models: { [key: string]: boolean } };
  }) => ({
    lanting,
    loading: loading.models.lanting,
  }),
)(ArchivePage);
