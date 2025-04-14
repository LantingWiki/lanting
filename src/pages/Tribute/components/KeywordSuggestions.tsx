import React, { useState, useEffect } from 'react';
import { Tag, Empty, Card, Button, Typography, Divider, Space } from 'antd';
import { TagsOutlined, PlusOutlined, AppstoreOutlined } from '@ant-design/icons';
import { generateKeywordSuggestions } from '../services/keywordExtractor';
import styles from './KeywordSuggestions.less';

const { Title, Text } = Typography;

interface KeywordSuggestionsProps {
  summary?: string | null;
  onSelectKeyword?: (keyword: string) => void;
  onSelectAllKeywords?: (keywords: string[]) => void;
  loading?: boolean;
  keywords?: { 
    predefined: string[]; 
    extracted: string[];
  } | null;
}

const KeywordSuggestions: React.FC<KeywordSuggestionsProps> = ({
  summary,
  onSelectKeyword,
  onSelectAllKeywords,
  loading = false,
  keywords,
}) => {
  const [suggestions, setSuggestions] = useState<{ predefined: string[], extracted: string[] }>({
    predefined: [],
    extracted: []
  });

  // 当摘要或关键词变化时更新建议
  useEffect(() => {
    // 如果直接提供了关键词数据，优先使用
    if (keywords && (keywords.predefined.length > 0 || keywords.extracted.length > 0)) {
      setSuggestions(keywords);
    } 
    // 否则，如果有摘要，使用本地方法生成关键词
    else if (summary) {
      const newSuggestions = generateKeywordSuggestions(summary);
      setSuggestions(newSuggestions);
    } else {
      setSuggestions({ predefined: [], extracted: [] });
    }
  }, [summary, keywords]);

  // 处理选择关键词
  const handleSelect = (keyword: string) => {
    if (onSelectKeyword) {
      onSelectKeyword(keyword);
    }
  };

  // 处理选择所有关键词
  const handleSelectAll = () => {
    if (onSelectAllKeywords) {
      const allKeywords = [...suggestions.predefined, ...suggestions.extracted];
      onSelectAllKeywords(allKeywords);
    }
  };

  // 如果没有摘要/关键词或关键词为空，显示空状态
  if ((!summary && !keywords && !loading) || 
      (suggestions.predefined.length === 0 && suggestions.extracted.length === 0 && !loading)) {
    return (
      <Card className={styles.container} title={<><TagsOutlined /> 关键词建议</>}>
        <Empty
          image={Empty.PRESENTED_IMAGE_SIMPLE}
          description="输入链接后将显示关键词建议"
        />
      </Card>
    );
  }

  // 加载状态
  if (loading) {
    return (
      <Card className={styles.container} title={<><TagsOutlined /> 关键词建议</>} loading={true}>
        <div style={{ height: 100 }} />
      </Card>
    );
  }

  return (
    <Card
      className={styles.container}
      title={<><TagsOutlined /> 关键词建议</>}
      extra={
        <Button 
          type="link" 
          size="small" 
          onClick={handleSelectAll}
          disabled={suggestions.predefined.length === 0 && suggestions.extracted.length === 0}
        >
          <PlusOutlined /> 全部添加
        </Button>
      }
    >
      {suggestions.predefined.length > 0 && (
        <div className={styles.section}>
          <Text type="secondary"><AppstoreOutlined /> 匹配的预定义关键词：</Text>
          <div className={styles.tagContainer}>
            {suggestions.predefined.map((keyword) => (
              <Tag
                key={keyword}
                className={styles.tag}
                onClick={() => handleSelect(keyword)}
              >
                {keyword}
              </Tag>
            ))}
          </div>
          <Divider className={styles.divider} />
        </div>
      )}

      {suggestions.extracted.length > 0 ? (
        <div className={styles.section}>
          <Text type="secondary"><AppstoreOutlined /> 从文章中提取的关键词：</Text>
          <div className={styles.tagContainer}>
            {suggestions.extracted.map((keyword) => (
              <Tag
                key={keyword}
                className={styles.tag}
                onClick={() => handleSelect(keyword)}
              >
                {keyword}
              </Tag>
            ))}
          </div>
        </div>
      ) : summary ? (
        <div className={styles.section}>
          <Empty
            image={Empty.PRESENTED_IMAGE_SIMPLE}
            description="无法从文章中提取关键词，请手动添加"
          />
        </div>
      ) : null}
    </Card>
  );
};

export default KeywordSuggestions; 