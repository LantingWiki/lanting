import React, { FC, useEffect } from 'react';
import { Form } from 'antd';
import { connect, Dispatch } from 'umi';
import { PageContainer } from '@ant-design/pro-layout';
import { toChineseNumbers } from '@/utils/utils';
import Filters from './components/Filters';
import MiscRecipes from './components/MiscRecipes';
import ArchiveChapter from './components/ArchiveChapter';
import { StateType } from './model';
import { ChapterArchives, CHAPTERS, FilterValues } from './data';
import styles from './style.less';

interface LantingProps {
  dispatch: Dispatch;
  lanting: StateType;
  loading: boolean;
}

const getCount = (currentArchives: ChapterArchives) => {
  let count = 0;
  if (!currentArchives) {
    return count;
  }
  Object.keys(currentArchives).forEach((k) => {
    count += currentArchives[k].length;
  });
  return count;
};

const Lanting: FC<LantingProps> = ({
  dispatch,
  lanting: { compiledArchives, currentArchives },
}) => {
  const [form] = Form.useForm();

  useEffect(() => {
    dispatch({
      type: 'lanting/fetch',
    });
  }, []);

  const onFilterChange = (_: any, values: FilterValues) => {
    dispatch({
      type: 'lanting/queryList',
      payload: {
        values,
      },
    });
  };
  const count = getCount(currentArchives);
  return (
    <PageContainer
      title={
        <>
          <>兰亭已矣</>
          {count ? <span className={styles.count}>凡{toChineseNumbers(`${count}`)}篇</span> : null}
        </>
      }
      className={styles.pcontainer}
      content={<Filters archives={compiledArchives} form={form} onValuesChange={onFilterChange} />}
    >
      {CHAPTERS.map((c) => (
        <ArchiveChapter key={c} chapter={c} archives={currentArchives[c]} />
      ))}
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
