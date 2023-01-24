import React, { FC } from 'react';
import { connect, Dispatch } from 'umi';
import { Button } from 'antd';
import { SketchOutlined, DownOutlined, UpOutlined } from '@ant-design/icons';
import Highlighter from 'react-highlight-words';
import ReactMarkdown from 'react-markdown';
import remarkGfm from 'remark-gfm';
import ExpandCollapse from '@/components/vendor/ExpandCollapse';
import styles from './index.less';
import { Archive } from '../../data';

interface ArchiveListContentProps {
  archive: Archive;
  search: string;
  dispatch: Dispatch;
}

const processMdImgSyntax = (md: string) => {
  return md.replace(/!\[\]\((.+?)\)/g, (match, g1) => {
    return `![](https://cdn.lanting.wiki.w.cdngslb.com/archives/${g1})`;
  });
};

const like = (dispatch: Dispatch, archive: Archive, isLike: boolean) => {
  return () => {
    dispatch({
      type: 'lanting/like',
      payload: { archive, isLike },
    });
  };
};

const ArchiveListContent: FC<ArchiveListContentProps> = ({ dispatch, archive, search }) => {
  const { likes } = archive;
  const classNames = likes ? `${styles.extraUpDiv} ${styles.hasLikes}` : styles.extraUpDiv;

  const renderers = {
    text: ({ value }: { value: any }) => (
      <Highlighter searchWords={[search]} autoEscape textToHighlight={value} />
    ),
    // eslint-disable-next-line react/no-unused-prop-types
    inlineCode: ({ value }: { value: any }) => (
      <code>
        <Highlighter searchWords={[search]} autoEscape textToHighlight={value} />
      </code>
    ),
  };

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
        {/* <Highlighter searchWords={[search]} autoEscape textToHighlight={archive.remarks} /> */}
        <ReactMarkdown
          plugins={[remarkGfm]}
          className="react-markdown"
          renderers={renderers}
          source={processMdImgSyntax(archive.remarks)}
        />
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
        <div className={styles.extraId}>
          <Highlighter searchWords={[search]} autoEscape textToHighlight={archive.id} />
        </div>
      </div>
    </div>
  );
};

export default connect()(ArchiveListContent);
