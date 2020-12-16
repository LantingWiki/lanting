import React from 'react';
import { Form, Select, Collapse, InputNumber, Input, Tag } from 'antd';
import { FormInstance } from 'antd/lib/form/Form';
import { DownOutlined } from '@ant-design/icons';
import { Archives, FilterValues } from '@/pages/Lanting/data';
import { fieldToTranslation } from '@/utils/utils';
import StandardFormRow from '../StandardFormRow';

import styles from './index.less';

const FormItem = Form.Item;
const { Option } = Select;
const { Panel } = Collapse;

type TagPair = [string, number];

const compareFn = (a: TagPair, b: TagPair) => (b[1] as number) - (a[1] as number);

export interface FilterProps {
  archives: Archives;
  form: FormInstance;
  searchList: String[];
  onValuesChange: (changedValues: any, values: FilterValues) => void;
}

const generateOptions = (field: string, archives: Archives) => {
  const map = archives.fieldFreqMap[field];
  let options: TagPair[] = Object.entries(map);
  if (field === 'date') {
    options = options.sort();
  } else {
    options = options.sort(compareFn);
  }
  const optionElements = options.map((fieldVal) => (
    <Option key={fieldVal[0]} value={fieldVal[0]} label={fieldVal[0]}>
      {fieldVal[0]}: {fieldVal[1]}
    </Option>
  ));
  optionElements.unshift(
    <Option key="all" value="all" label="全选">
      全选
    </Option>,
  );
  return optionElements;
};

const generateSelect = (field: string, archives: Archives, isLast: boolean) => {
  const translation = fieldToTranslation[field];
  return (
    <StandardFormRow title={translation} key={field} last={isLast}>
      <FormItem name={field}>
        <Select
          suffixIcon={<DownOutlined />}
          mode="multiple"
          placeholder={`筛选${translation}`}
          optionLabelProp="label"
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

const onClickChange = (form: any, event: any, onValuesChange: any) => {
  const textIn = event.target.textContent;
  const values = form.getFieldValue();
  values.search = textIn;
  const changedValues = { search: textIn };
  onValuesChange(changedValues, values);
};

const Filters: React.FC<FilterProps> = ({ archives, form, searchList, onValuesChange }) => (
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
          likesMin: 0,
          likesMax: 255,
          search: '',
        }}
        onValuesChange={onValuesChange}
      >
        <FormItem className={styles.tagContainer}>
          {searchList.map((hotSpot) => (
            <Tag
              className={styles.tagClass}
              onClick={(event) => onClickChange(form, event, onValuesChange)}
            >
              {hotSpot}
            </Tag>
          ))}
        </FormItem>
        <StandardFormRow title="搜索" key="search" last>
          <FormItem name="search">
            <Input />
          </FormItem>
        </StandardFormRow>
        <StandardFormRow title="如琢如磨" key="likes" last>
          <div className={styles.likesRow}>
            <FormItem name="likesMin" label="大于等于" labelAlign="left">
              <InputNumber />
            </FormItem>
            <FormItem name="likesMax" label="小于等于" labelAlign="left">
              <InputNumber />
            </FormItem>
          </div>
        </StandardFormRow>
        {generateSelects(archives)}
      </Form>
    </Panel>
  </Collapse>
);

export default Filters;
