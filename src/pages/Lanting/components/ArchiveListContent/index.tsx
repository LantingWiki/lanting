import React from 'react';
import { CalendarOutlined, DownOutlined, UpOutlined } from '@ant-design/icons';
import ReactMarkdown from 'react-markdown';
import ExpandCollapse from '@/components/vendor/ExpandCollapse';
import styles from './index.less';
import { Archive } from '../../data';

interface ArchiveListContentProps {
  archive: Archive;
}

const ArchiveListContent: React.FC<ArchiveListContentProps> = ({ archive }) => (
  <div className={styles.listContent}>
    <ExpandCollapse
      previewHeight="128px"
      expandText={
        <>
          一叶知秋 <DownOutlined />
        </>
      }
      collapseText={
        <>
          微言大义 <UpOutlined />
        </>
      }
      ellipsis={false}
    >
      <ReactMarkdown source={archive.remarks} skipHtml />
    </ExpandCollapse>
    <div className={styles.description} />
    <div className={styles.extra}>
      <CalendarOutlined style={{ marginRight: 8 }} />
      {archive.date}
    </div>
  </div>
);

export default ArchiveListContent;
