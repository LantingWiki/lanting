// 预定义的关键词库，按类别分类
const predefinedKeywords = {
  // 技术类
  tech: [
    '人工智能', 'AI', '机器学习', '深度学习', '区块链', '云计算', '大数据', 
    '物联网', 'IoT', '5G', '编程', '算法', 'API', '前端', '后端', '全栈',
    '数据库', 'SQL', 'NoSQL', 'Linux', 'Windows', 'macOS', 'iOS', 'Android',
    '开源', 'GitHub', '代码', '软件开发', '硬件', '网络安全', '加密', 
    '虚拟现实', 'VR', '增强现实', 'AR', '量子计算', '边缘计算'
  ],
  
  // 商业类
  business: [
    '创业', '投资', '融资', '股票', '市场', '营销', '策略', '管理',
    '领导力', '团队', '创新', '商业模式', '盈利', '收入', '成本',
    '客户', '用户', '产品', '服务', '品牌', '竞争', '合作',
    'B2B', 'B2C', 'C2C', '电子商务', '零售', '批发', '供应链',
    '创业公司', '独角兽', '风险投资', 'VC', '天使投资', 'IPO'
  ],
  
  // 文化类
  culture: [
    '历史', '文学', '艺术', '音乐', '电影', '戏剧', '哲学', '宗教',
    '社会', '文化', '传统', '民族', '语言', '教育', '学术', '研究',
    '传媒', '新闻', '出版', '博客', '自媒体', '短视频', '直播',
    '潮流', '时尚', '设计', '创意', '游戏', '动漫', '二次元'
  ],
  
  // 生活类
  lifestyle: [
    '健康', '医疗', '养生', '饮食', '运动', '旅行', '家居', '装修',
    '汽车', '交通', '环保', '可持续', '心理', '情感', '人际关系',
    '职场', '工作', '学习', '效率', '时间管理', '财务', '理财',
    '消费', '购物', '美食', '美容', '时尚', '穿搭'
  ]
};

// 常见的停用词
const stopWords = new Set([
  '的', '了', '和', '是', '就', '都', '而', '及', '与', '这', '那', '你', '我', '他', '她', 
  '它', '们', '有', '在', '中', '为', '以', '于', '对', '从', '但', '并', '等', '被',
  'the', 'a', 'an', 'of', 'to', 'and', 'in', 'that', 'it', 'with', 'for', 'as', 'be', 'on',
  'by', 'at', 'this', 'was', 'is', 'are', 'from', 'or', 'not'
]);

/**
 * 从摘要文本中提取可能的关键词
 * @param summary 摘要文本
 * @returns 提取的关键词数组
 */
export const extractKeywordsFromSummary = (summary?: string | null): string[] => {
  if (!summary) return [];
  
  // 对摘要进行基础处理
  const text = summary.toLowerCase();
  
  // 提取中文词组（2-6个中文字符）
  const chineseRegex = /[\u4e00-\u9fa5]{2,6}/g;
  const chineseMatches = text.match(chineseRegex) || [];
  
  // 提取英文词组（2个以上的字母）
  const englishRegex = /[a-zA-Z]{3,}/g;
  const englishMatches = text.match(englishRegex) || [];
  
  // 合并提取结果
  const allMatches = [...chineseMatches, ...englishMatches];
  
  // 过滤停用词和过短的单词
  const filteredMatches = allMatches
    .filter(word => !stopWords.has(word) && word.length >= 2)
    .map(word => word.trim());
  
  // 计算词频
  const wordFrequency: Record<string, number> = {};
  filteredMatches.forEach(word => {
    wordFrequency[word] = (wordFrequency[word] || 0) + 1;
  });
  
  // 按词频排序并取前20个
  const sortedKeywords = Object.keys(wordFrequency)
    .sort((a, b) => wordFrequency[b] - wordFrequency[a])
    .slice(0, 20);
  
  return sortedKeywords;
};

/**
 * 从摘要中匹配预定义的关键词
 * @param summary 摘要文本
 * @returns 匹配到的预定义关键词
 */
export const matchPredefinedKeywords = (summary?: string | null): string[] => {
  if (!summary) return [];
  
  const text = summary.toLowerCase();
  const matches: string[] = [];
  
  // 合并所有预定义关键词
  const allKeywords = Object.values(predefinedKeywords).flat();
  
  // 检查每个预定义关键词是否出现在摘要中
  allKeywords.forEach(keyword => {
    if (text.includes(keyword.toLowerCase())) {
      matches.push(keyword);
    }
  });
  
  return matches;
};

/**
 * 生成关键词建议
 * @param summary 摘要文本
 * @returns 关键词建议，包括匹配的预定义词和从摘要提取的词
 */
export const generateKeywordSuggestions = (summary?: string | null): {
  predefined: string[];
  extracted: string[];
} => {
  if (!summary) {
    return { predefined: [], extracted: [] };
  }
  
  // 匹配预定义关键词
  const predefinedMatches = matchPredefinedKeywords(summary);
  
  // 从摘要中提取关键词
  const extractedKeywords = extractKeywordsFromSummary(summary);
  
  // 移除从摘要提取的关键词中与预定义匹配的部分（避免重复）
  const uniqueExtracted = extractedKeywords.filter(
    keyword => !predefinedMatches.includes(keyword)
  );
  
  return {
    predefined: predefinedMatches,
    extracted: uniqueExtracted
  };
}; 