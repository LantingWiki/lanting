import React, { FC } from 'react';
import { Card, Form, List, Select, Tag, Collapse } from 'antd';
import { FormInstance } from 'antd/lib/form/Form';
import { EditOutlined, BankOutlined, DownOutlined } from '@ant-design/icons';
import { connect, Dispatch } from 'umi';
import { PageContainer } from '@ant-design/pro-layout';
import { fieldToTranslation } from '@/utils/utils';
import ArchiveListContent from './components/ArchiveListContent';
import { StateType } from './model';
import { Archives, Archive, FilterValues } from './data';
import StandardFormRow from './components/StandardFormRow';
import styles from './style.less';

const { Option } = Select;
const { Panel } = Collapse;
const FormItem = Form.Item;

interface LantingProps {
  dispatch: Dispatch;
  lanting: StateType;
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

const generateSelects = (archives: Archives) => {
  return ['author', 'publisher', 'date', 'tag'].map((f, idx) =>
    generateSelect(f, archives, idx === 3),
  );
};

const getFilterElem = (
  archives: Archives,
  form: FormInstance,
  onValuesChange: (changedValues: any, values: FilterValues) => void,
) => {
  return (
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
          onValuesChange={onValuesChange}
        >
          {generateSelects(archives)}
        </Form>
      </Panel>
    </Collapse>
  );
};

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
      content={getFilterElem(compiledArchives, form, onFilterChange)}
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
