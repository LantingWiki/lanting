/* eslint-disable @typescript-eslint/no-unused-vars */
import React, { useState } from 'react';
import { connect, Dispatch } from 'umi';
// import { TributeParamsType } from '@/services/tribute';
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
  // states
  const [tributeState, setTributeState] = useState({
    links: '',
    title: '',
    author: '',
    publisher: '',
    date: '',
    chapter: '',
    tag: '',
    comment: '',
  });
  const { submitting } = props;

  // const handleSubmit = (values: TributeParamsType) => {
  //   const { dispatch } = props;
  //   dispatch({
  //     type: 'lantingTribute/tribute',
  //     payload: { ...values },
  //   });
  // };

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
      result = await fetch(`https://lanting.wiki/api/archive/tribute/info`, {
        method: 'POST',
        body: tributeState.links,
      });
      if (result && result.data) {
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

  const handleSubmit = () => {
    let result;
    const postData = async () => {
      result = await fetch('https://lanting.wiki/api/archive/tribute/save', {
        method: 'POST',
        body: JSON.stringify(tributeState),
      });
    };
    postData();
  };

  return (
    <div className={styles.main}>
      <LoginForm activeKey="tribute" onSubmit={handleSubmit}>
        <Tab key="tribute" tab="归档">
          <Input
            size="large"
            placeholder="link"
            prefix={<BookOutlined />}
            value={tributeState.links}
            id="links"
            onChange={handleInput}
            onBlur={handleInitRequest}
          />
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
          <Input
            size="large"
            placeholder="comment"
            value={tributeState.comment}
            id="comment"
            onChange={handleInput}
          />
        </Tab>
        <Submit loading={submitting}>归档</Submit>
      </LoginForm>
    </div>
  );
};

export default connect(({ loading }: { loading: { effects: { [key: string]: boolean } } }) => ({
  submitting: loading.effects['lantingTribute/tribute'],
}))(Tribute);
