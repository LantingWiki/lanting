import React, { FC } from 'react';
import { Form } from 'antd';
import { connect, Dispatch } from 'umi';
import { PageContainer } from '@ant-design/pro-layout';
import Filters from './components/Filters';
import MiscRecipes from './components/MiscRecipes';
import ArchiveChapter from './components/ArchiveChapter';
import { StateType } from './model';
import { CHAPTERS, FilterValues } from './data';
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
