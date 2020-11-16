import React, { FC } from 'react';
import { connect, Dispatch } from 'umi';
import { Button } from 'antd';
import { SketchOutlined, DownOutlined, UpOutlined } from '@ant-design/icons';
import ReactMarkdown from 'react-markdown';
import ExpandCollapse from '@/components/vendor/ExpandCollapse';
import styles from './index.less';
import { Archive } from '../../data';

interface ArchiveListContentProps {
  archive: Archive;
  dispatch: Dispatch;
}

const like = (dispatch: Dispatch, archive: Archive, isLike: boolean) => {
  return () => {
    dispatch({
      type: 'lanting/like',
      payload: { id: archive.id, isLike },
    });
    console.log('XXXTEMP', 1);
  };
};

const ArchiveListContent: FC<ArchiveListContentProps> = ({ dispatch, archive }) => {
  const likes = 6;
  const classNames = likes ? `${styles.extraUpDiv} ${styles.hasLikes}` : styles.extraUpDiv;
  return (
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
      <div className={styles.extra}>
        <div className={classNames}>
          <Button
            className={styles.extraUpBtn}
            icon={<SketchOutlined className={styles.extraUpIcon} />}
            onClick={like(dispatch, archive, true)}
          >
            {likes ? ` ${likes} ` : ''}
          </Button>
        </div>
        <div className={styles.extraDownDiv}>
          <Button
            className={styles.extraDownBtn}
            icon={<SketchOutlined className={styles.extraDownIcon} />}
            onClick={like(dispatch, archive, false)}
          />
        </div>
        <div className={styles.extraId}>{archive.id}</div>
      </div>
    </div>
  );
};

export default connect()(ArchiveListContent);
