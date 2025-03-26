import React, { useState } from 'react';
import { Dispatch } from 'umi';
import { Form, Select, Collapse, InputNumber, Input, Tag } from 'antd';
import { FormInstance } from 'antd/lib/form/Form';
import { DownOutlined, DoubleRightOutlined } from '@ant-design/icons';
import { Archives, FilterValues, SearchList } from '@/pages/Lanting/data';
import { fieldToTranslation } from '@/utils/utils';
import StandardFormRow from '../StandardFormRow';

import styles from './index.less';

const FormItem = Form.Item;
const { Option } = Select;
const { Panel } = Collapse;
const { Search } = Input;

type TagPair = [string, number];

const compareFn = (a: TagPair, b: TagPair) => (b[1] as number) - (a[1] as number);

export interface FilterProps {
  archives: Archives;
  form: FormInstance;
  searchLists: SearchList[];
  dispatch: Dispatch;
  onValuesChange: (changedValues: any, values: FilterValues) => void;
}

const generateOptions = (obj) => {
  if (!obj) return [];

  return Object.entries(obj).map(([key, value]) => ({
    value: key,
    label: value,
  }));
};

const generateSelect = (data, name, onChange) => {
  if (!data) return null;

  const options = generateOptions(data);
  if (options.length === 0) return null;

  const translation = fieldToTranslation[name];
  return (
    <StandardFormRow title={translation} key={name} last>
      <FormItem name={name}>
        <Select
          suffixIcon={<DownOutlined />}
          mode="multiple"
          placeholder={`筛选${translation}`}
          optionLabelProp="label"
        >
          {options.map((fieldVal) => (
            <Option key={fieldVal.value} value={fieldVal.value} label={fieldVal.label}>
              {fieldVal.value}: {fieldVal.label}
            </Option>
          ))}
        </Select>
      </FormItem>
    </StandardFormRow>
  );
};

const generateSelects = (filters, onChange) => {
  if (!filters || typeof filters !== 'object') return [];

  return Object.keys(filters).map((key) => {
    if (!filters[key]) return null;

    return generateSelect(filters[key], key, onChange);
  }).filter(Boolean);
};

const onClickChange = (form: any, event: any, onValuesChange: any) => {
  const textIn = event.target.textContent;
  const values = form.getFieldValue();
  values.search = textIn;
  const changedValues = { search: textIn };
  form.setFieldsValue(values);
  onValuesChange(changedValues, values);
};

const onSearch = (
  form: any,
  value: any,
  onValuesChange: any,
  dispatch: Dispatch,
  searchLists: SearchList[],
) => {
  const values = form.getFieldValue();
  values.confirmSearch = value;
  const changedValues = { confirmSearch: value };
  onValuesChange(changedValues, values);
  if (value !== '') {
    dispatch({
      type: 'lanting/saveSearch',
      payload: {
        keyword: value,
        searchLists,
      },
    });
  }
};

const generateTags = (
  tagLimit: Number,
  searchLists: SearchList[],
  form: any,
  onValuesChange: any,
) => {
  const resultSearchLists = [];
  searchLists.sort((a, b) => {
    if (b.count !== a.count) {
      return b.count - a.count;
    }
    return b.updatedAt - a.updatedAt;
  });

  for (let i = 0; i < tagLimit; i++) {
    if (searchLists[i]) {
      resultSearchLists.push(searchLists[i]);
    }
  }
  return resultSearchLists.map((hotSpot) => (
    <Tag
      className={styles.tagClass}
      onClick={(event) => onClickChange(form, event, onValuesChange)}
    >
      {hotSpot.keyword}
    </Tag>
  ));
};

const Filters: React.FC<FilterProps> = ({
  dispatch,
  archives,
  form,
  searchLists,
  onValuesChange,
}) => {
  const [tagLimit, addTagLimit] = useState(50);
  const handleSubmit = () => {
    addTagLimit(tagLimit + 20);
  };

  if (!archives || Object.keys(archives).length === 0) {
    return null;
  }

  const selects = generateSelects(archives, onValuesChange);

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
            likesMin: 0,
            likesMax: 255,
            search: '',
            confirmSearch: '',
          }}
          onValuesChange={onValuesChange}
        >
          <FormItem className={styles.tagContainer}>
            {generateTags(tagLimit, searchLists, form, onValuesChange)}
            <Tag icon={<DoubleRightOutlined />} onClick={handleSubmit} />
          </FormItem>
          <StandardFormRow title="如切如磋" key="search" last>
            <FormItem name="search">
              <Search
                placeholder="如切如磋"
                onSearch={(value) => onSearch(form, value, onValuesChange, dispatch, searchLists)}
                enterButton
              />
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
          {selects.length > 0 ? selects : null}
        </Form>
      </Panel>
    </Collapse>
  );
};

export default Filters;
