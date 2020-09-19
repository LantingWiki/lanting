import React from 'react';
import { Form, Select, Collapse } from 'antd';
import { FormInstance } from 'antd/lib/form/Form';
import { DownOutlined } from '@ant-design/icons';
import { Archives, FilterValues } from '@/pages/Lanting/data';
import { fieldToTranslation } from '@/utils/utils';
import StandardFormRow from '../StandardFormRow';

const FormItem = Form.Item;
const { Option } = Select;
const { Panel } = Collapse;

export interface FilterProps {
  archives: Archives;
  form: FormInstance;
  onValuesChange: (changedValues: any, values: FilterValues) => void;
}

const generateOptions = (field: string, archives: Archives) => {
  const map = archives.fieldFreqMap[field];
  const options = Object.entries(map)
    .sort((a, b) => (b[1] as number) - (a[1] as number))
    .map((fieldVal) => (
      <Option key={fieldVal[0]} value={fieldVal[0]} label={fieldVal[0]}>
        {fieldVal[0]}: {fieldVal[1]}
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

const Filters: React.FC<FilterProps> = ({ archives, form, onValuesChange }) => (
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

export default Filters;
