import { Card, Collapse } from 'antd';
import React from 'react';
import styles from './index.less';

const { Panel } = Collapse;

export interface ChapterCardProps {
  title: string | React.ReactElement;
  defaultActive?: boolean;
}

const ChapterCard: React.FC<ChapterCardProps> = ({ title, children, defaultActive }) => (
  <Card className={styles.chaptercard} bordered={false}>
    <Collapse ghost defaultActiveKey={defaultActive ? ['1'] : []}>
      <Panel header={title} key="1" showArrow={false}>
        {children}
      </Panel>
    </Collapse>
  </Card>
);

export default ChapterCard;
