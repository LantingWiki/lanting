import axios from 'axios';
import config from '../../config';

// 简单的内存缓存实现
interface CacheItem<T> {
  data: T;
  timestamp: number;
}

// 缓存对象
const cache: {
  [key: string]: CacheItem<any>;
} = {};

/**
 * 获取缓存项，如果不存在或过期则返回null
 * @param key 缓存键
 * @param cacheTime 缓存时间（毫秒）
 * @returns 缓存的数据或null
 */
function getCacheItem<T>(key: string, cacheTime: number = config.baiduAI.cacheTime): T | null {
  const item = cache[key];
  if (item && Date.now() - item.timestamp < cacheTime) {
    return item.data;
  }
  return null;
}

/**
 * 设置缓存项
 * @param key 缓存键
 * @param data 要缓存的数据
 * @param cacheTime 缓存时间（可选）
 */
function setCacheItem<T>(key: string, data: T, cacheTime?: number): void {
  cache[key] = {
    data,
    timestamp: Date.now()
  };
}

// 百度OAuth响应接口
interface BaiduOAuthResponse {
  access_token?: string;
  expires_in?: number;
  error?: string;
  error_description?: string;
}

/**
 * 获取百度AI平台的access_token
 * @returns Promise<string> 返回access_token
 */
export async function getAccessToken(): Promise<string> {
  // 尝试从缓存获取token
  const cacheKey = 'baidu_access_token';
  const cachedToken = getCacheItem<string>(cacheKey);
  
  if (cachedToken) {
    console.log('使用缓存的百度AI access token');
    return cachedToken;
  }
  
  // 验证API Key和Secret Key是否已配置
  if (!config.baiduAI.apiKey || !config.baiduAI.secretKey) {
    throw new Error('百度AI API密钥未配置，请在环境变量中设置BAIDU_AI_API_KEY和BAIDU_AI_SECRET_KEY');
  }
  
  try {
    console.log('获取新的百度AI access token');
    const response = await axios.get<BaiduOAuthResponse>(
      `https://aip.baidubce.com/oauth/2.0/token?grant_type=client_credentials&client_id=${config.baiduAI.apiKey}&client_secret=${config.baiduAI.secretKey}`
    );
    
    if (response.data && response.data.access_token) {
      // 缓存token - 默认缓存25天（百度token有效期通常为30天）
      const token = response.data.access_token;
      // 25天的缓存时间（毫秒）
      const tokenCacheTime = 25 * 24 * 60 * 60 * 1000;
      setCacheItem(cacheKey, token, tokenCacheTime);
      return token;
    } else {
      throw new Error('获取百度AI access token失败，返回数据格式不正确');
    }
  } catch (error) {
    console.error('获取百度AI access token失败:', error);
    throw error;
  }
}

// 百度API响应接口
interface BaiduSummaryResponse {
  log_id?: number;
  summary?: string;
  error_code?: number;
  error_msg?: string;
}

interface BaiduKeywordItem {
  word: string;
  score: number;
}

interface BaiduKeywordsResponse {
  log_id?: number;
  results?: BaiduKeywordItem[];
  error_code?: number;
  error_msg?: string;
}

/**
 * 优化文本内容，清理格式和不必要的内容
 * @param content 原始文本内容
 * @returns 处理后的文本
 */
function cleanTextContent(content: string): string {
  if (!content) return '';
  
  let cleanedText = content
    // 移除多余空白
    .replace(/\s+/g, ' ')
    // 移除常见的网页噪声
    .replace(/评论\d+|点赞\d+|收藏\d+|分享\d+|举报/g, '')
    .replace(/https?:\/\/\S+|www\.\S+/g, '') // 移除URL
    .replace(/\d{4}-\d{2}-\d{2}|\d{2}:\d{2}:\d{2}/g, '') // 移除时间戳
    .replace(/copyright|版权所有|all rights reserved/gi, '')
    // 处理换行 - 保留段落结构
    .replace(/\n\s+/g, '\n')
    .trim();
  
  // 移除文章开头的常见噪声
  cleanedText = cleanedText
    .replace(/^(导语|摘要|简介|前言|abstract|summary)[：:]\s*/i, '')
    .replace(/^(正文|内容|content)[：:]\s*/i, '');
  
  return cleanedText;
}

/**
 * 将文本分成多个段落
 * @param content 原始文本
 * @returns 段落数组
 */
function splitIntoParagraphs(content: string): string[] {
  if (!content) return [];
  
  // 按照段落分隔符分割文本
  const paragraphs = content
    .split(/\n+|。(?=\s|$)|；(?=\s|$)|;(?=\s|$)|\?(?=\s|$)|？(?=\s|$)|!(?=\s|$)|！(?=\s|$)/)
    .map(p => p.trim())
    .filter(p => p.length > 10); // 过滤掉太短的段落
  
  return paragraphs;
}

/**
 * 为百度API准备文本内容，添加段落分隔符
 * @param title 标题
 * @param content 内容
 * @returns 处理后的文本
 */
function prepareContentForBaidu(title: string | null | undefined, content: string): string {
  // 清理内容
  const cleanedContent = cleanTextContent(content);
  
  // 分割成段落
  const paragraphs = splitIntoParagraphs(cleanedContent);
  
  // 限制总字符数
  let preparedText = '';
  let currentLength = 0;
  const maxLength = 2500; // 保险起见，低于百度API的3000字符限制
  
  // 添加标题
  if (title) {
    preparedText = title.trim() + '\n\n';
    currentLength += title.length + 2;
  }
  
  // 添加段落，确保使用\n分隔
  for (const paragraph of paragraphs) {
    // 检查是否会超出最大长度
    if (currentLength + paragraph.length + 1 > maxLength) {
      break;
    }
    
    preparedText += paragraph + '\n';
    currentLength += paragraph.length + 1;
  }
  
  return preparedText.trim();
}

/**
 * 生成文本摘要
 * @param title 文章标题（可选）
 * @param content 文章内容
 * @returns Promise<string> 返回生成的摘要
 */
export async function generateSummary(title: string | null | undefined, content: string): Promise<string> {
  if (!content || content.trim().length === 0) {
    return '';
  }
  
  // 优化处理文本，处理段落并限制长度
  const preparedContent = prepareContentForBaidu(title, content);
  
  // 生成缓存键（使用内容和标题的部分内容）
  const contentPreview = preparedContent.substring(0, 100);
  const titlePreview = title ? title.substring(0, 30) : '';
  const cacheKey = `summary_${titlePreview}_${contentPreview}`;
  
  // 尝试从缓存获取摘要
  const cachedSummary = getCacheItem<string>(cacheKey);
  if (cachedSummary) {
    console.log('使用缓存的摘要结果');
    return cachedSummary;
  }
  
  try {
    const accessToken = await getAccessToken();
    const url = `https://aip.baidubce.com/rpc/2.0/nlp/v1/news_summary?access_token=${accessToken}&charset=UTF-8`;
    
    // 准备请求数据
    const requestData = {
      title: title || '',
      content: preparedContent,
      max_summary_len: 500 // 设置摘要最大长度为500字
    };
    
    console.log('调用百度新闻摘要API', {
      title: requestData.title ? requestData.title.substring(0, 30) + '...' : '无标题',
      contentLength: requestData.content.length
    });
    
    const response = await axios.post<BaiduSummaryResponse>(url, requestData, {
      headers: {
        'Content-Type': 'application/json'
      },
      timeout: 20000 // 增加超时时间到20秒
    });
    
    if (response.data && response.data.summary) {
      // 对摘要进行优化处理
      const summary = response.data.summary
        .trim()
        .replace(/(\S)。(\S)/g, '$1。\n$2') // 在句号后添加换行符，增加可读性
        .replace(/\.\s+([A-Z])/g, '.\n$1'); // 英文句号后也添加换行
        
      // 缓存摘要结果
      setCacheItem(cacheKey, summary);
      return summary;
    } else if (response.data && response.data.error_code) {
      // 处理API错误
      console.warn('百度新闻摘要API返回错误:', {
        error_code: response.data.error_code,
        error_msg: response.data.error_msg
      });
      
      // 如果API失败，尝试从内容中提取简短的摘要
      return generateFallbackSummary(content, 500);
    } else {
      console.warn('百度新闻摘要API返回异常:', response.data);
      // 提供一个简单的后备方案
      return generateFallbackSummary(content, 500);
    }
  } catch (error) {
    console.error('生成摘要失败:', error);
    // 出错时提供一个简单的摘要
    return generateFallbackSummary(content, 500);
  }
}

/**
 * 生成后备摘要，用于API失败时
 * @param content 原文内容
 * @param maxLength 最大长度
 * @returns 生成的后备摘要
 */
function generateFallbackSummary(content: string, maxLength: number): string {
  if (!content) return '';
  
  // 清理和准备文本
  const cleanedContent = cleanTextContent(content);
  const paragraphs = splitIntoParagraphs(cleanedContent);
  
  // 如果有足够的段落，取前几个有意义的段落
  if (paragraphs.length > 0) {
    let summary = '';
    let currentLength = 0;
    
    for (const paragraph of paragraphs) {
      if (currentLength + paragraph.length + 1 > maxLength) {
        // 如果添加这个段落会超出长度限制，考虑添加一部分
        const remainingSpace = maxLength - currentLength - 4; // 保留空间给"..."
        if (remainingSpace > 20) { // 如果剩余空间足够一个短句
          summary += paragraph.substring(0, remainingSpace) + '...';
        }
        break;
      }
      
      summary += paragraph + '\n\n';
      currentLength += paragraph.length + 2;
    }
    
    return summary.trim();
  }
  
  // 如果没有识别出段落，简单截取内容
  if (cleanedContent.length > maxLength) {
    return cleanedContent.substring(0, maxLength - 3) + '...';
  }
  
  return cleanedContent;
}

/**
 * 提取关键词
 * @param content 文章内容
 * @param numKeywords 获取的关键词数量
 * @returns Promise<{word: string, score: number}[]> 返回提取的关键词及其权重
 */
export async function extractKeywords(content: string, numKeywords: number = 10): Promise<{word: string, score: number}[]> {
  if (!content || content.trim().length === 0) {
    return [];
  }
  
  // 额外限制内容长度，避免API请求失败
  // 百度API经常因为内容过长导致QPS限制
  const limitedContent = content.length > 5000 ? content.substring(0, 5000) : content;
  
  // 生成缓存键
  const contentPreview = limitedContent.substring(0, 100);
  const cacheKey = `keywords_${numKeywords}_${contentPreview}`;
  
  // 尝试从缓存获取关键词
  const cachedKeywords = getCacheItem<{word: string, score: number}[]>(cacheKey);
  if (cachedKeywords) {
    console.log('使用缓存的关键词结果');
    return cachedKeywords;
  }
  
  try {
    const accessToken = await getAccessToken();
    const url = `https://aip.baidubce.com/rpc/2.0/nlp/v1/txt_keywords_extraction?access_token=${accessToken}&charset=UTF-8`;
    
    // 准备请求数据
    const requestData = {
      text: [limitedContent],
      num: numKeywords
    };
    
    console.log('调用百度关键词提取API', {
      contentLength: limitedContent.length,
      numKeywords
    });
    
    const response = await axios.post<BaiduKeywordsResponse>(url, requestData, {
      headers: {
        'Content-Type': 'application/json'
      },
      timeout: 10000 // 10秒超时
    });
    
    if (response.data && response.data.results) {
      const keywords = response.data.results.map(item => ({
        word: item.word,
        score: item.score
      }));
      
      // 缓存关键词结果
      setCacheItem(cacheKey, keywords);
      return keywords;
    } else if (response.data && response.data.error_code) {
      // 处理API错误
      console.warn('百度关键词提取API返回错误:', {
        error_code: response.data.error_code,
        error_msg: response.data.error_msg
      });
      
      // QPS限制错误时，返回空结果
      return [];
    } else {
      console.warn('百度关键词提取API返回异常:', response.data);
      return [];
    }
  } catch (error) {
    console.error('提取关键词失败:', error);
    return [];
  }
}

/**
 * 分析文本内容，同时获取摘要和关键词
 * @param title 文章标题
 * @param content 文章内容
 * @param numKeywords 获取的关键词数量
 * @returns 摘要和关键词
 */
export async function analyzeContent(title: string | null | undefined, content: string, numKeywords: number = 10): Promise<{
  summary: string;
  keywords: {
    predefined: string[];
    extracted: string[];
  };
}> {
  if (!content || content.trim().length === 0) {
    return {
      summary: '',
      keywords: {
        predefined: [],
        extracted: []
      }
    };
  }
  
  try {
    // 为避免QPS限制，减少内容长度
    const truncatedContent = content.length > 5000 ? content.substring(0, 5000) : content;
    
    // 稍微延迟关键词提取，避免同时发起两个请求触发QPS限制
    const summary = await generateSummary(title, truncatedContent);
    
    // 添加200毫秒延迟
    await new Promise(resolve => setTimeout(resolve, 200));
    
    const keywordsResult = await extractKeywords(truncatedContent, numKeywords);
    
    return {
      summary,
      keywords: {
        predefined: [], // 目前百度API不返回预定义关键词，此处保留空数组以保持接口一致
        extracted: keywordsResult.map(item => item.word)
      }
    };
  } catch (error) {
    console.error('内容分析失败:', error);
    
    // 提供一个基本的后备方案
    return {
      summary: content.length > 0 ? content.substring(0, 500) + '...' : '',
      keywords: {
        predefined: [],
        extracted: []
      }
    };
  }
} 