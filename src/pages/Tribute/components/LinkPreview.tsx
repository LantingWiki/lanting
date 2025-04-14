import React from 'react';
import { Spin, Divider, Empty } from 'antd';
import { LinkOutlined } from '@ant-design/icons';
import styles from './LinkPreview.less';

interface PreviewData {
  title?: string | null;
  author?: string | null;
  publisher?: string | null;
  date?: string | null;
  summary?: string | null;
}

interface LinkPreviewProps {
  previewData: PreviewData | null;
  loading: boolean;
}

const LinkPreview: React.FC<LinkPreviewProps> = ({ previewData, loading }) => {
  if (loading) {
    return (
      <div className={styles.previewContainer}>
        <Spin tip="正在加载网页内容..." />
      </div>
    );
  }
  
  if (!previewData || Object.keys(previewData).length === 0) {
    return (
      <div className={styles.previewContainer}>
        <div className={styles.emptyPreview}>
          <Empty 
            image={Empty.PRESENTED_IMAGE_SIMPLE} 
            description={
              <span>
                <p>输入链接后将显示网页预览</p>
                <p style={{ fontSize: '12px', color: '#999' }}>
                  <LinkOutlined />  
                </p>
              </span>
            }
          />
        </div>
      </div>
    );
  }
  
  return (
    <div className={styles.previewContainer}>
      <h3 className={styles.previewTitle}>网页预览</h3>
      <div className={styles.previewContent}>
        {previewData.title && (
          <p className={styles.previewItem}>
            <strong>标题：</strong> {previewData.title}
          </p>
        )}
        {previewData.author && (
          <p className={styles.previewItem}>
            <strong>作者：</strong> {previewData.author}
          </p>
        )}
        {previewData.publisher && (
          <p className={styles.previewItem}>
            <strong>来源：</strong> {previewData.publisher}
          </p>
        )}
        {previewData.date && (
          <p className={styles.previewItem}>
            <strong>日期：</strong> {previewData.date}
          </p>
        )}
        {previewData.summary && (
          <>
            <Divider className={styles.divider} />
            <div className={styles.summaryContainer}>
              <p className={styles.summaryTitle}><strong>内容摘要：</strong></p>
              <p className={styles.summary}>{previewData.summary}</p>
            </div>
          </>
        )}
      </div>
    </div>
  );
};

export default LinkPreview; 