/* eslint-disable @typescript-eslint/no-unused-vars */
import React, { useState } from 'react';
import { connect, Dispatch } from 'umi';
// import { TributeParamsType } from '@/services/tribute';
import { BookOutlined, DownOutlined, CheckCircleOutlined } from '@ant-design/icons';
import { Input, Select, Form, notification } from 'antd';
import request from '@/utils/request';
import LoginForm from './tribute';
import styles from './style.less';

const { TextArea } = Input;

const { Tab, Submit } = LoginForm;
interface TributeProps {
  dispatch: Dispatch;
  submitting?: boolean;
}

const Tribute: React.FC<TributeProps> = (props) => {
  // states
  const [tributeState, setTributeState] = useState({
    link: '',
    title: '',
    author: '',
    publisher: '',
    date: '',
    chapter: '',
    tag: '',
    remarks: '',
  });
  const { submitting } = props;

  const handleSubmit = () => {
    request('https://lanting.wiki/api/archive/tribute/save', {
      method: 'post',
      data: tributeState,
    });
  };

  const handleInput = (event: { target: { value: string; id: string } }) => {
    const newTributeState = { ...tributeState };
    newTributeState[event.target.id] = event.target.value;
    setTributeState(newTributeState);
  };

  const handleSelect = (event: string) => {
    const newTributeState = { ...tributeState };
    newTributeState.chapter = event;
    setTributeState(newTributeState);
  };

  const handleInitRequest = () => {
    let result: any;
    const fetchData = async () => {
      result = await request(`https://lanting.wiki/api/archive/tribute/info`, {
        method: 'post',
        data: tributeState.link,
      });
      if (result && result.data && result.status === 'success') {
        notification.open({
          message: '获取成功',
          description: `成功从${tributeState.link}获取相关信息!`,
          icon: <CheckCircleOutlined style={{ color: '#008000' }} />,
        });
        const { title, author, publisher, date } = result.data;
        const newTributeState = { ...tributeState };
        newTributeState.title = title;
        newTributeState.author = author;
        newTributeState.publisher = publisher;
        newTributeState.date = date;
        setTributeState(newTributeState);
      }
    };

    fetchData();
  };

  return (
    <div className={styles.main}>
      <LoginForm activeKey="tribute" onSubmit={handleSubmit}>
        <Tab key="tribute" tab="归档">
          <Form.Item
            name="link"
            rules={[
              {
                required: true,
                message: 'Please input the link!',
              },
            ]}
          >
            <Input
              size="large"
              placeholder="link"
              prefix={<BookOutlined />}
              value={tributeState.link}
              id="link"
              onChange={handleInput}
              onBlur={handleInitRequest}
            />
          </Form.Item>

          <div className={styles.gridbox}>
            <Input
              size="large"
              placeholder="title"
              value={tributeState.title}
              id="title"
              onChange={handleInput}
            />
            <Input
              size="large"
              placeholder="author"
              value={tributeState.author}
              id="author"
              onChange={handleInput}
            />
            <Input
              size="large"
              placeholder="publisher"
              value={tributeState.publisher}
              id="publisher"
              onChange={handleInput}
            />
            <Input
              size="large"
              placeholder="date"
              value={tributeState.date}
              id="date"
              onChange={handleInput}
            />
            <Select
              suffixIcon={<DownOutlined />}
              placeholder="chapter"
              id="chapter"
              onChange={handleSelect}
            >
              {['本纪', '世家', '搜神', '列传', '游侠', '群像'].map((chapter) => (
                <Select.Option value={chapter}>{chapter}</Select.Option>
              ))}
            </Select>
            <Input
              size="large"
              placeholder="tag"
              value={tributeState.tag}
              id="tag"
              onChange={handleInput}
            />
            <TextArea
              placeholder="remarks"
              rows={4}
              value={tributeState.remarks}
              id="remarks"
              onChange={handleInput}
            />
          </div>
        </Tab>
        <Submit loading={submitting}>归档</Submit>
      </LoginForm>
    </div>
  );
};

export default connect(({ loading }: { loading: { effects: { [key: string]: boolean } } }) => ({
  submitting: loading.effects['lantingTribute/tribute'],
}))(Tribute);
