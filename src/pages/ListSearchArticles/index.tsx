import React, { FC, useEffect } from 'react';
import { Button, Card, Col, Form, List, Row, Select, Tag, Collapse } from 'antd';
import { EditOutlined, BankOutlined, LoadingOutlined, DownOutlined } from '@ant-design/icons';
import { connect, Dispatch } from 'umi';
import { PageContainer } from '@ant-design/pro-layout';
import compiledArchives from '@/assets/archives.json';
import { fieldToTranslation } from '@/utils/utils';
import ArticleListContent from './components/ArticleListContent';
import ArchiveListContent from './components/ArchiveListContent';
import { StateType } from './model';
import { ListItemDataType, Archives, Archive } from './data';
import StandardFormRow from './components/StandardFormRow';
import TagSelect from './components/TagSelect';
import styles from './style.less';

const { Option } = Select;
const { Panel } = Collapse;
const FormItem = Form.Item;

const pageSize = 5;

interface ListSearchArticlesProps {
  dispatch: Dispatch;
  listSearchArticles: StateType;
  loading: boolean;
}

const generateOptions = (field: string, archives: Archives) => {
  const map = archives.fieldFreqMap[field];
  const options = Object.keys(map).map((fieldVal) => (
    <Option key={fieldVal} value={fieldVal} label={fieldVal}>
      {fieldVal}: {map[fieldVal]}
    </Option>
  ));
  options.unshift(
    <Option key="all" value="all" label="全选">
      全选
    </Option>,
  );
  return options;
};

const generateSelect = (field: string, archives: Archives, isLast: boolean) => {
  const translation = fieldToTranslation[field];
  return (
    <StandardFormRow title={translation} key={field} last={isLast}>
      <FormItem name={field} className={styles.formitem}>
        <Select
          suffixIcon={<DownOutlined />}
          mode="multiple"
          placeholder={`筛选${translation}`}
          optionLabelProp="label"
          className={styles.select}
        >
          {generateOptions(field, archives)}
        </Select>
      </FormItem>
    </StandardFormRow>
  );
};

const ListSearchArticles: FC<ListSearchArticlesProps> = ({
  dispatch,
  listSearchArticles: { list },
  loading,
}) => {
  const [form] = Form.useForm();
  useEffect(() => {
    dispatch({
      type: 'listSearchArticles/fetch',
      payload: {
        count: 5,
      },
    });
  }, []);
  const setOwner = () => {
    form.setFieldsValue({
      owner: ['wzj'],
    });
  };

  const fetchMore = () => {
    dispatch({
      type: 'listSearchArticles/appendFetch',
      payload: {
        count: pageSize,
      },
    });
  };

  const owners = [
    {
      id: 'wzj',
      name: '我自己',
    },
    {
      id: 'wjh',
      name: '吴家豪',
    },
    {
      id: 'zxx',
      name: '周星星',
    },
    {
      id: 'zly',
      name: '赵丽颖',
    },
    {
      id: 'ym',
      name: '姚明',
    },
  ];

  const IconText: React.FC<{
    type: string;
    text: React.ReactNode;
  }> = ({ type, text }) => {
    switch (type) {
      case 'edit':
        return (
          <span className={styles.author}>
            <EditOutlined style={{ marginRight: 8 }} />
            {text}
          </span>
        );
      case 'bank':
        return (
          <span className={styles.author}>
            <BankOutlined style={{ marginRight: 8 }} />
            {text}
          </span>
        );
      default:
        return null;
    }
  };

  const formItemLayout = {
    wrapperCol: {
      xs: { span: 24 },
      sm: { span: 24 },
      md: { span: 12 },
    },
  };

  const loadMore = list.length > 0 && (
    <div style={{ textAlign: 'center', marginTop: 16 }}>
      <Button onClick={fetchMore} style={{ paddingLeft: 48, paddingRight: 48 }}>
        {loading ? (
          <span>
            <LoadingOutlined /> 加载中...
          </span>
        ) : (
          '加载更多'
        )}
      </Button>
    </div>
  );

  const selects = ['author', 'publisher', 'date', 'tag'].map((f, idx) =>
    generateSelect(f, compiledArchives, idx === 3),
  );

  const filterElem = (
    <Collapse ghost>
      <Panel header="兰亭已矣, 梓泽丘墟. 何处世家? 几人游侠?" key="1" forceRender showArrow={false}>
        <Form
          layout="vertical"
          form={form}
          initialValues={{
            author: ['all'],
            publisher: ['all'],
            date: ['all'],
            tag: ['all'],
          }}
          onValuesChange={() => {
            dispatch({
              type: 'listSearchArticles/fetch',
              payload: {
                count: 8,
              },
            });
          }}
        >
          {selects}
        </Form>
      </Panel>
    </Collapse>
  );

  return (
    <PageContainer className={styles.pcontainer} content={filterElem}>
      <Card bordered={false}>
        <Form
          layout="inline"
          form={form}
          initialValues={{
            owner: ['wjh', 'zxx'],
          }}
          onValuesChange={() => {
            dispatch({
              type: 'listSearchArticles/fetch',
              payload: {
                count: 8,
              },
            });
          }}
        >
          <StandardFormRow title="所属类目" block style={{ paddingBottom: 11 }}>
            <FormItem name="category">
              <TagSelect expandable>
                <TagSelect.Option value="cat1">类目一</TagSelect.Option>
                <TagSelect.Option value="cat2">类目二</TagSelect.Option>
                <TagSelect.Option value="cat3">类目三</TagSelect.Option>
                <TagSelect.Option value="cat4">类目四</TagSelect.Option>
                <TagSelect.Option value="cat5">类目五</TagSelect.Option>
                <TagSelect.Option value="cat6">类目六</TagSelect.Option>
                <TagSelect.Option value="cat7">类目七</TagSelect.Option>
                <TagSelect.Option value="cat8">类目八</TagSelect.Option>
                <TagSelect.Option value="cat9">类目九</TagSelect.Option>
                <TagSelect.Option value="cat10">类目十</TagSelect.Option>
                <TagSelect.Option value="cat11">类目十一</TagSelect.Option>
                <TagSelect.Option value="cat12">类目十二</TagSelect.Option>
              </TagSelect>
            </FormItem>
          </StandardFormRow>
          <StandardFormRow title="owner" grid>
            <FormItem name="owner" noStyle>
              <Select mode="multiple" placeholder="选择 owner">
                {owners.map((owner) => (
                  <Option key={owner.id} value={owner.id}>
                    {owner.name}
                  </Option>
                ))}
              </Select>
            </FormItem>
            <a className={styles.selfTrigger} onClick={setOwner}>
              只看自己的
            </a>
          </StandardFormRow>
          <StandardFormRow title="其它选项" grid last>
            <Row gutter={16}>
              <Col xl={8} lg={10} md={12} sm={24} xs={24}>
                <FormItem {...formItemLayout} label="活跃用户" name="user">
                  <Select placeholder="不限" style={{ maxWidth: 200, width: '100%' }}>
                    <Option value="lisa">李三</Option>
                  </Select>
                </FormItem>
              </Col>
              <Col xl={8} lg={10} md={12} sm={24} xs={24}>
                <FormItem {...formItemLayout} label="好评度" name="rate">
                  <Select placeholder="不限" style={{ maxWidth: 200, width: '100%' }}>
                    <Option value="good">优秀</Option>
                  </Select>
                </FormItem>
              </Col>
            </Row>
          </StandardFormRow>
        </Form>
      </Card>
      <Card className={styles.listcard} bordered={false}>
        <List<Archive>
          size="large"
          rowKey="id"
          itemLayout="vertical"
          loadMore={loadMore}
          dataSource={compiledArchives.archives}
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
                  <a className={styles.listItemMetaTitle} href="#">
                    {item.title}
                  </a>
                }
                description={
                  <span>
                    {item.tag.map((t) => (
                      <Tag>{t}</Tag>
                    ))}
                  </span>
                }
              />
              <ArchiveListContent archive={item} />
            </List.Item>
          )}
        />
      </Card>
      <Card
        style={{ marginTop: 24 }}
        bordered={false}
        bodyStyle={{ padding: '8px 32px 32px 32px' }}
      >
        <List<ListItemDataType>
          size="large"
          loading={list.length === 0 ? loading : false}
          rowKey="id"
          itemLayout="vertical"
          loadMore={loadMore}
          dataSource={list}
          renderItem={(item) => (
            <List.Item
              key={item.id}
              actions={[
                <IconText key="star" type="star-o" text={item.star} />,
                <IconText key="like" type="like-o" text={item.like} />,
                <IconText key="message" type="message" text={item.message} />,
              ]}
              extra={<div className={styles.listItemExtra} />}
            >
              <List.Item.Meta
                title={
                  <a className={styles.listItemMetaTitle} href={item.href}>
                    {item.title}
                  </a>
                }
                description={
                  <span>
                    <Tag>Ant Design</Tag>
                    <Tag>设计语言</Tag>
                    <Tag>蚂蚁金服</Tag>
                  </span>
                }
              />
              <ArticleListContent data={item} />
            </List.Item>
          )}
        />
      </Card>
    </PageContainer>
  );
};

export default connect(
  ({
    listSearchArticles,
    loading,
  }: {
    listSearchArticles: StateType;
    loading: { models: { [key: string]: boolean } };
  }) => ({
    listSearchArticles,
    loading: loading.models.listSearchArticles,
  }),
)(ListSearchArticles);
