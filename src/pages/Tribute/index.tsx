/* eslint-disable @typescript-eslint/no-unused-vars */
import React, { useState } from 'react';
import { connect, Dispatch } from 'umi';
// import { TributeParamsType } from '@/services/tribute';
import {
  BookOutlined,
  DownOutlined,
  CheckCircleOutlined,
  CloseCircleOutlined,
  UploadOutlined,
  LoadingOutlined,
} from '@ant-design/icons';
import { Input, Select, Form, notification, Upload, Button, Divider, Switch, Spin } from 'antd';
import type { UploadFile } from 'antd/es/upload/interface';
import request from '@/utils/request';
import LoginForm from './tribute';
import styles from './style.less';

const { TextArea } = Input;

const { Tab, Submit } = LoginForm;
interface TributeProps {
  dispatch: Dispatch;
  submitting?: boolean;
}

// 扩展tributeState接口，使其能够接受任意字符串索引
interface TributeState {
  link: string;
  title: string;
  author: string;
  publisher: string;
  date: string;
  chapter: string;
  tag: string;
  remarks: string;
  [key: string]: string;
}

const Tribute: React.FC<TributeProps> = (props) => {
  // states
  const [tributeState, setTributeState] = useState<TributeState>({
    link: '',
    title: '',
    author: '',
    publisher: '',
    date: '',
    chapter: '',
    tag: '',
    remarks: '',
  });

  const [submitLoading, submitLoadingToggle] = useState(false);
  const [fileList, setFileList] = useState<UploadFile[]>([]);
  const [useManualUpload, setUseManualUpload] = useState(false);
  const [linkLoading, setLinkLoading] = useState(false); // 新增：链接加载状态
  const [fileLoading, setFileLoading] = useState(false); // 新增：文件加载状态

  const handleSubmit = async () => {
    submitLoadingToggle(true);

    // 使用 FormData 处理文件上传
    const formData = new FormData();

    // 添加文章信息
    Object.keys(tributeState).forEach((key) => {
      formData.append(key, tributeState[key]);
    });

    // 如果有上传的文件
    if (fileList.length > 0 && useManualUpload) {
      formData.append('htmlFile', fileList[0].originFileObj as File);
    }

    const result = await request('/api/archive/tribute/save', {
      method: 'post',
      data: useManualUpload ? formData : tributeState,
      // 使用 FormData 时必须设置这个选项为 undefined，否则请求会失败
      requestType: useManualUpload ? 'form' : 'json',
    });

    if (result && result.status === 'success') {
      notification.open({
        message: '成功',
        description: `成功保存!`,
        icon: <CheckCircleOutlined style={{ color: '#008000' }} />,
        duration: null,
      });
    } else if (result && result.status === 'fail') {
      const warnMessage = result.code ? result.code : '';
      notification.open({
        message: '失败',
        description: `保存失败，原因是${warnMessage}。`,
        icon: <CloseCircleOutlined style={{ color: '#FF0000' }} />,
        duration: null,
      });
    }

    submitLoadingToggle(false);
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

  const handleInitRequest = async () => {
    // 如果链接为空，直接返回
    if (!tributeState.link || tributeState.link.trim() === '') {
      return;
    }

    setLinkLoading(true); // 设置加载状态为true
    try {
      // 调用接口获取数据
      const result = await request(`/api/tribute/info?link=${encodeURIComponent(tributeState.link)}`, {
        method: 'get',
      });

      if (result && result.status === 'success' && result.data) {
        // 请求成功，显示通知
        notification.success({
          message: '获取成功',
          description: `成功从${tributeState.link}获取相关信息!`,
          icon: <CheckCircleOutlined style={{ color: '#008000' }} />,
        });

        // 创建新的状态对象
        const newTributeState = { ...tributeState };

        // 遍历返回的数据，只更新有值的字段（不为null的字段）
        Object.keys(result.data).forEach(key => {
          if (result.data[key] !== null && key in newTributeState) {
            newTributeState[key] = result.data[key];
          }
        });

        // 更新状态
        setTributeState(newTributeState);
      } else {
        // 请求失败或返回数据不完整
        notification.warning({
          message: '获取信息不完整',
          description: '从链接获取的信息不完整，请手动填写。',
          icon: <CloseCircleOutlined style={{ color: '#FFA500' }} />,
        });
      }
    } catch (error) {
      // 请求异常
      notification.error({
        message: '获取失败',
        description: '从链接获取信息失败，请手动填写。',
        icon: <CloseCircleOutlined style={{ color: '#FF0000' }} />,
      });
      console.error('Error fetching link info:', error);
    } finally {
      setLinkLoading(false); // 不管结果如何，最后都设置加载状态为false
    }
  };

  // 处理文件上传
  const handleFileChange = (info: any) => {
    let newFileList = [...info.fileList];

    // 只保留一个文件
    newFileList = newFileList.slice(-1);

    // 过滤文件类型，只允许 HTML 文件
    newFileList = newFileList.filter(file => {
      if (file.type === 'text/html' || file.name.endsWith('.html')) {
        return true;
      }
      notification.error({
        message: '文件类型错误',
        description: '只允许上传 HTML 文件！',
      });
      return false;
    });

    setFileList(newFileList);

    // 如果有上传文件，自动提取信息
    if (newFileList.length > 0) {
      extractDataFromHtmlFile(newFileList[0].originFileObj as File);
    }
  };

  // 从上传的HTML文件提取信息
  const extractDataFromHtmlFile = async (file: File) => {
    if (!file) return;

    setFileLoading(true);
    try {
      const formData = new FormData();
      formData.append('htmlFile', file);

      const result = await request('/api/tribute/extract-html', {
        method: 'post',
        data: formData,
        requestType: 'form',
      });

      if (result && result.status === 'success' && result.data) {
        const foundFields = Object.keys(result.data).filter(key =>
          result.data[key] !== null && result.data[key] !== undefined && result.data[key] !== ''
        );

        // 检查重要字段是否被提取到
        const importantFields = ['title', 'author', 'publisher', 'date'];
        const foundImportantFields = importantFields.filter(field =>
          foundFields.includes(field) && result.data[field]
        );

        // 显示详细的提取结果
        let description = '成功从HTML文件提取以下信息: ';
        description += foundFields.map(field => {
          if (field === 'date') {
            if (result.data.fullDate) {
              return `日期(${result.data.fullDate})`;
            }
            return `日期(${result.data.date})`;
          }
          if (field === 'publisher') {
            return `出版方(${result.data.publisher})`;
          }
          if (field === 'author') {
            return `作者(${result.data.author})`;
          }
          if (field === 'title') {
            return `标题(${result.data.title.substring(0, 15)}...)`;
          }
          return field;
        }).join(', ');

        // 检测是否可能是微信文章
        const isWechatArticle =
          (result.data.publisher && (
            result.data.publisher.includes('微信') ||
            /^[^-_]+$/.test(result.data.publisher) && result.data.publisher.length < 15
          )) ||
          (result.data.fullDate && result.data.publisher) || // 有完整日期和发布者的很可能是微信文章
          (foundFields.length >= 3 && foundImportantFields.length >= 3); // 微信文章通常能提取到多个字段

        if (isWechatArticle) {
          notification.success({
            message: '微信公众号文章识别成功',
            description: description,
            icon: <CheckCircleOutlined style={{ color: '#008000' }} />,
            duration: 6,
          });
        } else if (foundImportantFields.length > 0) {
          // 找到了一些重要字段
          notification.success({
            message: '获取成功',
            description,
            icon: <CheckCircleOutlined style={{ color: '#008000' }} />,
          });
        } else {
          // 未找到重要字段
          notification.warning({
            message: '部分获取成功',
            description: `${description}。但未能提取到标题、作者或日期等重要信息，请手动填写。`,
            icon: <CheckCircleOutlined style={{ color: '#FFA500' }} />,
          });
        }

        // 创建新的状态对象
        const newTributeState = { ...tributeState };

        // 遍历返回的数据，只更新有值的字段（不为null的字段）
        Object.keys(result.data).forEach(key => {
          if (result.data[key] !== null && key in newTributeState) {
            newTributeState[key] = result.data[key];
          }
        });

        // 更新状态
        setTributeState(newTributeState);
      } else {
        // 请求失败或返回数据不完整
        notification.warning({
          message: '获取信息不完整',
          description: '从HTML文件获取的信息不完整，请手动填写。',
          icon: <CloseCircleOutlined style={{ color: '#FFA500' }} />,
        });
      }
    } catch (error) {
      // 请求异常
      notification.error({
        message: '获取失败',
        description: '从HTML文件获取信息失败，请手动填写。',
        icon: <CloseCircleOutlined style={{ color: '#FF0000' }} />,
      });
      console.error('Error extracting info from HTML file:', error);
    } finally {
      setFileLoading(false);
    }
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
                message: '请输入链接！',
              },
            ]}
          >
            <Input
              size="large"
              placeholder="链接 (必填)"
              prefix={
                linkLoading ? (
                  <Spin indicator={<LoadingOutlined style={{ fontSize: 16 }} spin />} />
                ) : (
                  <BookOutlined />
                )
              }
              value={tributeState.link}
              id="link"
              onChange={handleInput}
              onBlur={handleInitRequest}
              disabled={linkLoading}
            />
          </Form.Item>

          <Form.Item>
            <div style={{ display: 'flex', alignItems: 'center', marginBottom: '15px' }}>
              <span style={{ marginRight: '10px' }}>使用手动上传HTML文件:</span>
              <Switch checked={useManualUpload} onChange={(checked) => setUseManualUpload(checked)} />
            </div>

            {useManualUpload && (
              <Upload
                fileList={fileList}
                onChange={handleFileChange}
                beforeUpload={() => false} // 阻止自动上传
                accept=".html,text/html"
              >
                <Button icon={<UploadOutlined />} loading={fileLoading}>选择HTML文件</Button>
                <div style={{ marginTop: '5px', color: '#999' }}>
                  只支持HTML文件，系统将直接使用上传的文件而不下载网页
                </div>
              </Upload>
            )}
          </Form.Item>

          <Divider orientation="left">文章信息</Divider>

          <div className={styles.gridbox}>
            <Input
              size="large"
              placeholder="标题 (必填)"
              value={tributeState.title}
              id="title"
              onChange={handleInput}
            />
            <Input
              size="large"
              placeholder="作者"
              value={tributeState.author}
              id="author"
              onChange={handleInput}
            />
            <Input
              size="large"
              placeholder="出版方"
              value={tributeState.publisher}
              id="publisher"
              onChange={handleInput}
            />
            <Input
              size="large"
              placeholder="日期 (YYYY-MM)"
              value={tributeState.date}
              id="date"
              onChange={handleInput}
            />
            <Select
              suffixIcon={<DownOutlined />}
              placeholder="章节"
              id="chapter"
              onChange={handleSelect}
              value={tributeState.chapter || undefined}
            >
              {['本纪', '世家', '搜神', '列传', '游侠', '群像'].map((chapter) => (
                <Select.Option value={chapter} key={chapter}>{chapter}</Select.Option>
              ))}
            </Select>
            <Input
              size="large"
              placeholder="标签 (多个标签用逗号分隔)"
              value={tributeState.tag}
              id="tag"
              onChange={handleInput}
            />
            <TextArea
              placeholder="备注"
              rows={4}
              value={tributeState.remarks}
              id="remarks"
              onChange={handleInput}
            />
          </div>
        </Tab>
        <Submit loading={submitLoading}>归档</Submit>
      </LoginForm>
    </div>
  );
};

export default connect(({ loading }: { loading: { effects: { [key: string]: boolean } } }) => ({
  submitting: loading.effects['lantingTribute/tribute'],
}))(Tribute);
