import React from 'react';
import { connect, Dispatch } from 'umi';
import { TributeParamsType } from '@/services/tribute';
import { BookOutlined, DownOutlined } from '@ant-design/icons';
import { Input, Select } from 'antd';
import LoginForm from './tribute';
import styles from './style.less';

const { Tab, Submit } = LoginForm;
interface TributeProps {
  dispatch: Dispatch;
  submitting?: boolean;
}

const Tribute: React.FC<TributeProps> = (props) => {
  const { submitting } = props;

  const handleSubmit = (values: TributeParamsType) => {
    const { dispatch } = props;
    dispatch({
      type: 'lantingTribute/tribute',
      payload: { ...values },
    });
  };

  return (
    <div className={styles.main}>
      <LoginForm activeKey="tribute" onSubmit={handleSubmit}>
        <Tab key="tribute" tab="归档">
          <Input size="large" placeholder="link" prefix={<BookOutlined />} />
          <Input size="large" placeholder="title" />
          <Input size="large" placeholder="author" />
          <Input size="large" placeholder="publisher" />
          <Input size="large" placeholder="date" />
          <Select suffixIcon={<DownOutlined />} placeholder="chapter">
            {['本纪', '世家', '搜神', '列传', '游侠', '群像'].map((chapter) => (
              <Select.Option value={chapter}>{chapter}</Select.Option>
            ))}
          </Select>
          <Input size="large" placeholder="tag" />
          <Input size="large" placeholder="comment" />
        </Tab>
        <Submit loading={submitting}>归档</Submit>
      </LoginForm>
    </div>
  );
};

export default connect(({ loading }: { loading: { effects: { [key: string]: boolean } } }) => ({
  submitting: loading.effects['lantingTribute/tribute'],
}))(Tribute);
