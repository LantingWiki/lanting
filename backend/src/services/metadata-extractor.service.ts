import { Tribute } from '../types/tribute.types';
import { JSDOM } from 'jsdom';
import { dateUtil } from './date-util.service';

/**
 * 从HTML内容中提取元数据
 * @param htmlContent HTML内容
 * @returns 提取的元数据
 */
export async function extractMetadataFromHtml(htmlContent: string): Promise<Partial<Tribute>> {
  try {
    console.log('Extracting metadata from HTML:', htmlContent);
    const dom = new JSDOM(htmlContent);
    const document = dom.window.document;

    // 初始化返回对象
    const result: Partial<Tribute> = {};

    // 检查是否为微信公众平台页面
    const isWechatArticle = checkIsWechatArticle(document);
    console.log('Is Wechat article:', isWechatArticle);

    // 提取标题 - 优先使用 meta 标签，然后是 title 标签
    extractTitle(document, result);

    // 提取作者 - 通过多种可能的 meta 标签
    extractAuthor(document, result);

    // 针对微信公众号文章的特殊处理
    if (isWechatArticle) {
      extractWechatMetadata(document, result);
    } else {
      extractGenericMetadata(document, result);
    }

    // 提取日期 - 多种策略
    // 如果是微信文章且已经提取到日期，跳过通用日期提取
    if (!isWechatArticle || !result.date) {
      extractDateFromHtml(document, result);
    }

    // 确保所有未提取到的字段返回 'null'
    ensureNullForMissingFields(result);

    return result;
  } catch (error) {
    console.error('Error extracting metadata from HTML:', error);
    // 出错时返回所有字段为 'null' 的对象
    return createNullFieldsObject();
  }
}

/**
 * 确保所有未提取到的字段返回 'null'
 * @param result 结果对象
 */
function ensureNullForMissingFields(result: Partial<Tribute>): void {
  // 处理基本字段
  if (!result.title) result.title = 'null';
  if (!result.author) result.author = 'null';
  if (!result.publisher) result.publisher = 'null';
  if (!result.date) result.date = 'null';
  
  // 对于复杂类型的字段，提供默认值而不是'null'字符串
  if (!result.keywords) {
    result.keywords = {
      predefined: [],
      extracted: []
    };
  }
}

/**
 * 创建所有字段为 'null' 的对象
 * @returns 所有字段为 'null' 的对象
 */
function createNullFieldsObject(): Partial<Tribute> {
  return {
    title: 'null',
    author: 'null',
    publisher: 'null',
    date: 'null',
    keywords: {
      predefined: [],
      extracted: []
    }
  };
}

/**
 * 提取HTML文档中的标题
 * @param document DOM文档
 * @param result 结果对象
 */
function extractTitle(document: Document, result: Partial<Tribute>): void {
  const metaTitle = document.querySelector('meta[property="og:title"], meta[name="twitter:title"], meta[name="title"]');
  if (metaTitle && metaTitle.getAttribute('content')) {
    const content = metaTitle.getAttribute('content');
    if (content) {
      result.title = content;
    } else {
      result.title = 'null';
    }
  } else {
    const titleTag = document.querySelector('title');
    if (titleTag && titleTag.textContent) {
      result.title = titleTag.textContent;
    } else {
      result.title = 'null';
    }
  }
}

/**
 * 提取HTML文档中的作者信息
 * @param document DOM文档
 * @param result 结果对象
 */
function extractAuthor(document: Document, result: Partial<Tribute>): void {
  const metaAuthor = document.querySelector('meta[property="og:article:author"], meta[name="author"], meta[name="twitter:creator"]');
  if (metaAuthor && metaAuthor.getAttribute('content')) {
    const content = metaAuthor.getAttribute('content');
    if (content) {
      result.author = content;
    } else {
      result.author = 'null';
    }
  } else {
    result.author = 'null';
  }
}

/**
 * 提取微信公众号文章的特定元数据
 * @param document DOM文档
 * @param result 结果对象
 */
function extractWechatMetadata(document: Document, result: Partial<Tribute>): void {
  // 提取微信公众号名称
  extractWechatPublisher(document, result);

  // 提取微信文章日期
  extractWechatDate(document, result);

  // 如果没有找到作者，尝试从微信特定元素提取
  if (!result.author || result.author === 'null') {
    extractWechatAuthor(document, result);
  }
}

/**
 * 提取微信公众号名称
 * @param document DOM文档
 * @param result 结果对象
 */
function extractWechatPublisher(document: Document, result: Partial<Tribute>): void {
  const publisherElement = document.querySelector('#js_name');
  if (publisherElement && publisherElement.textContent) {
    const publisherText = publisherElement.textContent.trim();
    if (publisherText) {
      result.publisher = publisherText;
      console.log('Extracted Wechat publisher:', publisherText);
    } else {
      result.publisher = 'null';
    }
  } else {
    result.publisher = 'null';
  }
}

/**
 * 提取微信文章日期
 * @param document DOM文档
 * @param result 结果对象
 */
function extractWechatDate(document: Document, result: Partial<Tribute>): void {
  const dateElement = document.getElementById('publish_time');

  if (dateElement && dateElement.textContent) {
    const dateText = dateElement.textContent.trim();
    if (dateText) {
      // 处理常见的微信日期格式
      // 1. 标准格式："2025年03月31日 14:15"
      let match = dateText.match(/(\d{4})年(\d{2})月(\d{2})日/);
      if (match) {
        // 保存完整日期格式 YYYY-MM-DD
        result.date = `${match[1]}-${match[2]}-${match[3]}`;
        console.log('Extracted Wechat date (standard format):', result.date);
      }
      // 2. 特殊格式："今天"、"昨天"、"前天"
      else if (dateText.includes('今天') || dateText.includes('昨天') || dateText.includes('前天') ||
                dateText.includes('days ago') || dateText.includes('day ago') ||
                dateText.includes('小时前') || dateText.includes('分钟前')) {
        // 对于相对日期，使用当前日期
        const now = new Date();
        const year = now.getFullYear();
        const month = (now.getMonth() + 1).toString().padStart(2, '0');
        const day = now.getDate().toString().padStart(2, '0');
        result.date = `${year}-${month}-${day}`;
        console.log('Extracted Wechat date (relative format):', result.date);
      }
      // 3. 月日格式："MM月DD日"，假设是当年
      else if ((match = dateText.match(/(\d{1,2})月(\d{1,2})日/))) {
        const now = new Date();
        const year = now.getFullYear();
        const month = match[1].padStart(2, '0');
        const day = match[2].padStart(2, '0');
        result.date = `${year}-${month}-${day}`;
        console.log('Extracted Wechat date (month-day format):', result.date);
      }
      // 4. 使用通用提取方法
      else {
        const extractedDate = dateUtil.extractDateFromString(dateText);
        if (extractedDate) {
          result.date = extractedDate.date;
          console.log('Extracted Wechat date (general method):', result.date);
        } else {
          result.date = 'null';
        }
      }
    } else {
      result.date = 'null';
    }
  } else {
    result.date = 'null';
  }
}

/**
 * 提取微信文章作者
 * @param document DOM文档
 * @param result 结果对象
 */
function extractWechatAuthor(document: Document, result: Partial<Tribute>): void {
  const dateElement = document.querySelector('#publish_time');
  const authorElements = document.querySelectorAll('.rich_media_meta.rich_media_meta_text');
  let authorFound = false;

  for (const el of authorElements) {
    // 排除带有ID的元素（通常是时间），作者元素通常没有ID
    if (!el.id && el.id !== 'publish_time') {
      const authorText = el.textContent?.trim();
      if (authorText && authorText !== dateElement?.textContent?.trim()) {
        result.author = authorText;
        console.log('Extracted Wechat author:', authorText);
        authorFound = true;
        break;
      }
    }
  }

  if (!authorFound) {
    result.author = 'null';
  }
}

/**
 * 提取通用网页元数据
 * @param document DOM文档
 * @param result 结果对象
 */
function extractGenericMetadata(document: Document, result: Partial<Tribute>): void {
  // 提取出版方 - 通常是网站名称
  const metaPublisher = document.querySelector('meta[property="og:site_name"], meta[name="application-name"]');
  if (metaPublisher && metaPublisher.getAttribute('content')) {
    const content = metaPublisher.getAttribute('content');
    if (content) {
      result.publisher = content;
    } else {
      result.publisher = 'null';
    }
  } else {
    result.publisher = 'null';
  }
}

/**
 * 从HTML元素中提取日期信息
 * @param document DOM文档
 * @param result 结果对象
 */
function extractDateFromHtml(document: Document, result: Partial<Tribute>): void {
  // 1. 首先尝试从元数据中提取
  let dateFound = false;
  const metaDateSelectors = [
    'meta[property="article:published_time"]',
    'meta[name="date"]',
    'meta[name="pubdate"]',
    'meta[property="og:published_time"]',
    'meta[name="publish_date"]',
    'meta[name="article:published_time"]',
    'meta[itemprop="datePublished"]',
    'meta[name="datePublished"]'
  ];

  for (const selector of metaDateSelectors) {
    if (dateFound) break;

    const metaDate = document.querySelector(selector);
    if (metaDate && metaDate.getAttribute('content')) {
      const dateStr = metaDate.getAttribute('content');
      if (dateStr) {
        try {
          const date = new Date(dateStr);
          if (!isNaN(date.getTime())) {
            const year = date.getFullYear();
            const month = (date.getMonth() + 1).toString().padStart(2, '0');
            const day = date.getDate().toString().padStart(2, '0');
            result.date = `${year}-${month}-${day}`;
            dateFound = true;
          }
        } catch (error) {
          console.error('Error parsing date from meta tag:', error);
        }
      }
    }
  }

  // 2. 查找具有时间相关属性的HTML元素
  if (!dateFound) {
    const timeSelectors = [
      'time[datetime]',
      '[itemprop="datePublished"]',
      '.publish-date',
      '.post-date',
      '.entry-date',
      '.article-date',
      '.article__date',
      '.article-meta time',
      '.news-date',
      '.date',
      '.time'
    ];

    for (const selector of timeSelectors) {
      if (dateFound) break;

      const timeElements = document.querySelectorAll(selector);
      for (const element of timeElements) {
        // 优先使用datetime属性
        const datetime = element.getAttribute('datetime');
        if (datetime) {
          try {
            const date = new Date(datetime);
            if (!isNaN(date.getTime())) {
              const year = date.getFullYear();
              const month = (date.getMonth() + 1).toString().padStart(2, '0');
              const day = date.getDate().toString().padStart(2, '0');
              result.date = `${year}-${month}-${day}`;
              dateFound = true;
              break;
            }
          } catch (error) {
            console.error('Error parsing datetime attribute:', error);
          }
        }

        // 使用元素内文本
        if (!dateFound && element.textContent) {
          const text = element.textContent.trim();
          const extractedDate = dateUtil.extractDateFromString(text);
          if (extractedDate) {
            result.date = extractedDate.date;
            dateFound = true;
            break;
          }
        }
      }
    }
  }

  // 3. 如果仍未找到日期，尝试查找页面中的日期字符串
  if (!dateFound) {
    // 查找含有日期的文本节点
    const possibleDateContainers = document.querySelectorAll('p, span, div, h1, h2, h3, h4, h5, h6');

    for (const element of possibleDateContainers) {
      if (dateFound) break;

      const text = element.textContent?.trim();
      if (text) {
        const extractedDate = dateUtil.extractDateFromString(text);
        if (extractedDate) {
          result.date = extractedDate.date;
          dateFound = true;
        }
      }
    }
  }

  // 如果所有方法都未找到日期，设置为'null'
  if (!dateFound) {
    result.date = 'null';
  }
}

/**
 * 检查HTML文档是否为微信公众号文章
 * @param document DOM文档
 * @returns 是否为微信公众号文章
 */
function checkIsWechatArticle(document: Document): boolean {
  // 检查meta标签中是否有微信公众平台的标识
  const metaSiteName = document.querySelector('meta[property="og:site_name"]');
  if (metaSiteName && metaSiteName.getAttribute('content')?.includes('微信公众平台')) {
    return true;
  }

  // 检查URL是否包含微信域名
  const canonicalLink = document.querySelector('link[rel="canonical"]');
  if (canonicalLink && canonicalLink.getAttribute('href')?.includes('weixin.qq.com')) {
    return true;
  }

  // 检查页面内容是否包含微信特有的元素
  if (document.querySelector('#js_name') && document.querySelector('#publish_time')) {
    return true;
  }

  return false;
}
