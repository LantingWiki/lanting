import React from 'react';
import { CalendarOutlined } from '@ant-design/icons';
import styles from './index.less';
import { Archive } from '../../data';

interface ArchiveListContentProps {
  archive: Archive;
}

const ArchiveListContent: React.FC<ArchiveListContentProps> = ({ archive }) => (
  <div className={styles.listContent}>
    <div className={styles.description}>{archive.remarks}</div>
    <div className={styles.extra}>
      <CalendarOutlined style={{ marginRight: 8 }} />
      {archive.date}
    </div>
  </div>
);

export default ArchiveListContent;
