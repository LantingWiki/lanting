import React, { FC } from 'react';
import { Card, Form, List, Tag } from 'antd';
import { EditOutlined, BankOutlined } from '@ant-design/icons';
import { connect, Dispatch } from 'umi';
import { PageContainer } from '@ant-design/pro-layout';
import Filters from './components/Filters';
import ArchiveListContent from './components/ArchiveListContent';
import MiscRecipes from './components/MiscRecipes';
import { StateType } from './model';
import { Archive, FilterValues } from './data';
import styles from './style.less';

interface LantingProps {
  dispatch: Dispatch;
  lanting: StateType;
  loading: boolean;
}

const Lanting: FC<LantingProps> = ({
  dispatch,
  lanting: { compiledArchives, currentArchives },
}) => {
  const [form] = Form.useForm();

  const onFilterChange = (_: any, values: FilterValues) => {
    dispatch({
      type: 'lanting/queryList',
      payload: {
        values,
      },
    });
  };

  return (
    <PageContainer
      className={styles.pcontainer}
      content={<Filters archives={compiledArchives} form={form} onValuesChange={onFilterChange} />}
    >
      <Card className={styles.listcard} bordered={false}>
        <List<Archive>
          size="large"
          rowKey="id"
          itemLayout="vertical"
          dataSource={currentArchives}
          renderItem={(item) => (
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
              extra={<div className={styles.listItemExtra} />}
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
          )}
        />
      </Card>
      <MiscRecipes />
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
)(Lanting);
