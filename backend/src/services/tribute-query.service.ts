import { Tribute } from '../types/tribute.types';
import axios from 'axios';
import * as metadataExtractor from './metadata-extractor.service';
import { JSDOM } from 'jsdom';
import { deepseekService } from './ai/deepseek.service';
import fs from 'fs';

// In-memory storage for tribute data
// In a real application, this would be replaced with a database
const tributes: Tribute[] = [];

/**
 * Get all tributes
 * @returns Array of all tributes
 */
export const getAllTributes = async (): Promise<Tribute[]> => {
  // In a real app, this would be a database call
  return [...tributes];
};

/**
 * Get tribute info from a link
 * 从链接获取文章信息，尝试提取元数据
 * @param link URL of the article to get info about
 */
export const getTributeInfo = async (link: string): Promise<Partial<Tribute>> => {
  try {
    // 确保URL格式正确（添加协议前缀）
    let url = link;
    if (url && !url.startsWith('http://') && !url.startsWith('https://')) {
      url = 'https://' + url;
    }

    console.log(`Fetching info for URL: ${url}`);

    // 获取页面内容
    const response = await axios.get(url, {
      headers: {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
        'Accept-Language': 'en-US,en;q=0.5'
      },
      timeout: 10000 // 10秒超时
    });

    // 确保响应数据是字符串
    const htmlContent = typeof response.data === 'string' ? response.data : String(response.data);

    // 从HTML内容提取元数据
    const metadata = await metadataExtractor.extractMetadataFromHtml(htmlContent);
    
    // 提取文章内容（用于分析）
    const articleContent = await extractArticleContent(htmlContent);
    
    // 使用 deepseek 分析内容
    const analysis = await deepseekService.analyzeContent(
      metadata.title || '',
      articleContent,
      15
    );
    
    console.log('Extracted metadata:', metadata);
    console.log('AI analysis summary:', analysis.summary);
    console.log('AI analysis keywords:', analysis.keywords.extracted);

    return {
      ...metadata,
      summary: analysis.summary,
      keywords: {
        predefined: [],
        extracted: analysis.keywords.extracted
      }
    };
  } catch (error) {
    console.error(`Error fetching info for link: ${link}`, error);
    // 如果发生错误，返回空元数据
    return {};
  }
};

/**
 * 从HTML内容中提取文章主体内容
 * @param htmlContent HTML内容
 * @returns 提取的文章内容文本
 */
const extractArticleContent = async (htmlContent: string): Promise<string> => {
  try {
    const dom = new JSDOM(htmlContent);
    const document = dom.window.document;
    
    // 尝试不同策略提取文章主体内容
    let content = '';
    let paragraphs: Element[] = [];
    
    // 策略1：尝试提取article标签内容
    const article = document.querySelector('article');
    if (article) {
      // 获取article中的所有段落
      paragraphs = Array.from(article.querySelectorAll('p, h1, h2, h3, h4, h5, h6'));
      if (paragraphs.length > 3) { // 至少有几个段落才认为是有效内容
        content = extractParagraphsWithStructure(paragraphs);
      } else {
        content = article.textContent || '';
      }
    }
    
    // 策略2：尝试提取特定class的内容（常见于新闻网站）
    if (!content || content.trim().length < 50) {
      const contentSelectors = [
        '.article-content', '.post-content', '.entry-content', 
        '.rich_media_content', '#js_content', // 微信公众号
        '.article', '.main-content', '.content',
        '.zhihu-content', '.ztext' // 知乎
      ];
      
      for (const selector of contentSelectors) {
        const contentElement = document.querySelector(selector);
        if (contentElement) {
          // 提取段落
          paragraphs = Array.from(contentElement.querySelectorAll('p, h1, h2, h3, h4, h5, h6'));
          if (paragraphs.length > 3) {
            content = extractParagraphsWithStructure(paragraphs);
            if (content.trim().length >= 50) break;
          } else {
            // 如果找不到足够的段落，就使用整个元素的文本
            content = contentElement.textContent || '';
            if (content.trim().length >= 50) break;
          }
        }
      }
    }
    
    // 策略3：尝试提取meta description
    if (!content || content.trim().length < 50) {
      const metaDesc = document.querySelector('meta[name="description"], meta[property="og:description"]');
      if (metaDesc && metaDesc.getAttribute('content')) {
        content = metaDesc.getAttribute('content') || '';
      }
    }
    
    // 策略4: 如果上述方法都失败，尝试获取所有段落文本
    if (!content || content.trim().length < 50) {
      // 尝试获取所有段落文本
      paragraphs = Array.from(document.querySelectorAll('p'));
      if (paragraphs.length > 0) {
        content = extractParagraphsWithStructure(paragraphs);
      }
    }
    
    // 策略5：如果所有方法都失败，获取body的所有文本
    if (!content || content.trim().length < 50) {
      const body = document.querySelector('body');
      if (body) {
        // 移除脚本、样式等元素
        Array.from(body.querySelectorAll('script, style, nav, header, footer, .comments, .sidebar, .ad')).forEach(el => {
          if (el.parentNode) {
            el.parentNode.removeChild(el);
          }
        });
        
        // 尝试从body中获取所有段落
        paragraphs = Array.from(body.querySelectorAll('p, h1, h2, h3, h4, h5, h6'));
        if (paragraphs.length > 3) {
          content = extractParagraphsWithStructure(paragraphs);
        } else {
          content = body.textContent || '';
        }
      }
    }
    
    // 清理文本
    content = cleanTextContent(content);
    
    console.log(`提取的文章内容长度: ${content.length} 字符`);
    
    return content;
  } catch (error) {
    console.error('Error extracting article content:', error);
    return '';
  }
};

/**
 * 从段落元素中提取文本，保留结构
 * @param paragraphs 段落元素数组
 * @returns 提取的文本，保留段落结构
 */
function extractParagraphsWithStructure(paragraphs: Element[]): string {
  const validParagraphs = paragraphs
    .map(p => {
      const text = p.textContent?.trim() || '';
      const tagName = p.tagName.toLowerCase();
      
      // 给标题添加特殊标记
      if (tagName.startsWith('h') && text) {
        const level = parseInt(tagName.substring(1));
        // 根据标题级别添加标记
        return '\n' + '#'.repeat(level) + ' ' + text + '\n';
      }
      
      return text;
    })
    .filter(text => text.length > 0); // 过滤空段落
  
  return validParagraphs.join('\n\n');
}

/**
 * 清理提取的文本内容
 * @param content 原始文本
 * @returns 清理后的文本
 */
function cleanTextContent(content: string): string {
  if (!content) return '';
  
  let cleanedText = content
    // 移除多余空白
    .replace(/\s+/g, ' ')
    // 处理换行 - 保留段落结构
    .replace(/\n\s+/g, '\n')
    // 移除常见的网页噪声
    .replace(/评论\d+|点赞\d+|收藏\d+|分享\d+|举报/g, '')
    // 移除常见的版权信息和网站信息
    .replace(/版权所有|copyright|all rights reserved/gi, '')
    // 处理多余的换行符
    .replace(/\n{3,}/g, '\n\n')
    .trim();
  
  // 移除文章开头的常见噪声
  cleanedText = cleanedText
    .replace(/^(导语|摘要|简介|前言|abstract|summary)[：:]\s*/i, '')
    .replace(/^(正文|内容|content)[：:]\s*/i, '');
  
  return cleanedText;
}

/**
 * 从HTML文件中提取元数据
 * @param filePath HTML文件的路径
 * @returns 提取的元数据
 */
export const extractHtmlInfo = async (filePath: string): Promise<Partial<Tribute>> => {
  try {
    console.log(`Reading HTML file from: ${filePath}`);
    
    // 读取文件内容
    const htmlContent = fs.readFileSync(filePath, 'utf8');
    
    // 从HTML内容提取元数据
    const metadata = await metadataExtractor.extractMetadataFromHtml(htmlContent);
    
    // 提取文章内容（用于分析）
    const articleContent = await extractArticleContent(htmlContent);
    
    // 使用 deepseek 分析内容
    const analysis = await deepseekService.analyzeContent(
      metadata.title || '',
      articleContent,
      15
    );
    
    console.log('Extracted metadata from HTML file:', metadata);
    console.log('AI analysis summary:', analysis.summary);
    console.log('AI analysis keywords:', analysis.keywords.extracted);
    
    return {
      ...metadata,
      summary: analysis.summary,
      keywords: {
        predefined: [],
        extracted: analysis.keywords.extracted
      }
    };
  } catch (error) {
    console.error(`Error extracting info from HTML file: ${filePath}`, error);
    // 如果发生错误，返回空元数据
    return {};
  }
};

/**
 * 抓取网页并保存为HTML文件
 * @param url 要抓取的URL
 * @param outputPath 输出文件路径
 * @returns Promise<boolean> 是否成功
 */
async function fetchAndSaveWebpage(url: string, outputPath: string): Promise<boolean> {
  const maxRetries = 3;
  const retryDelay = 5000; // 5秒重试延迟
  
  for (let attempt = 1; attempt <= maxRetries; attempt++) {
    try {
      console.log(`开始抓取网页 (尝试 ${attempt}/${maxRetries}): ${url}`);
      
      // 构建single-file命令
      const command = `npx single-file "${url}" "${outputPath}" \
        --browser-wait-until=networkidle0 \
        --browser-executable-path="/usr/bin/google-chrome" \
        --browser-args='["--no-sandbox","--disable-setuid-sandbox","--disable-dev-shm-usage","--disable-gpu"]' \
        --browser-timeout=120000 \
        --dump-content=false \
        --max-resource-size=50 \
        --max-resource-count=100`;
      
      // 执行命令
      const { exec } = require('child_process');
      const { promisify } = require('util');
      const execAsync = promisify(exec);
      
      await execAsync(command, { timeout: 180000 }); // 3分钟超时
      
      // 检查文件是否成功创建
      const fs = require('fs');
      if (fs.existsSync(outputPath)) {
        const stats = fs.statSync(outputPath);
        if (stats.size > 0) {
          console.log(`HTML文件创建成功: ${outputPath}, 大小: ${stats.size} 字节`);
          return true;
        }
      }
      
      console.warn(`文件创建失败或为空: ${outputPath}`);
      
    } catch (error) {
      console.error(`抓取网页失败 (尝试 ${attempt}/${maxRetries}):`, error);
      
      if (attempt < maxRetries) {
        console.log(`等待 ${retryDelay/1000} 秒后重试...`);
        await new Promise(resolve => setTimeout(resolve, retryDelay));
      }
    }
  }
  
  // 如果所有重试都失败，尝试使用简单的curl命令作为后备方案
  try {
    console.log('尝试使用curl作为后备方案...');
    const { exec } = require('child_process');
    const { promisify } = require('util');
    const execAsync = promisify(exec);
    
    await execAsync(`curl -L -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" "${url}" -o "${outputPath}"`, 
      { timeout: 60000 });
    
    const fs = require('fs');
    if (fs.existsSync(outputPath)) {
      const stats = fs.statSync(outputPath);
      if (stats.size > 0) {
        console.log(`使用curl成功保存HTML: ${outputPath}, 大小: ${stats.size} 字节`);
        return true;
      }
    }
  } catch (error) {
    console.error('curl后备方案也失败:', error);
  }
  
  return false;
}

/**
 * 生成新的ID
 * @returns 新的ID字符串
 */
function generateNewId(): string {
  return Date.now().toString();
}

/**
 * 重新编译archives.json文件
 */
async function recompileArchivesJson(): Promise<void> {
  try {
    const fs = require('fs');
    const path = require('path');
    const archivesPath = path.join(__dirname, '../../archives/archives.json');
    
    // 读取所有HTML文件
    const origsDir = path.join(__dirname, '../../archives/origs');
    const files = fs.readdirSync(origsDir).filter((file: string) => file.endsWith('.html'));
    
    // 创建archives数据
    const archives = files.map((file: string) => {
      const id = file.replace('.html', '');
      const title = file.replace(/^\d+-/, '').replace('.html', '');
      return { id, title };
    });
    
    // 写入archives.json
    fs.writeFileSync(archivesPath, JSON.stringify(archives, null, 2));
  } catch (error) {
    console.error('重新编译archives.json时出错:', error);
    throw error;
  }
}

/**
 * 保存tribute数据
 * @param tributeData tribute数据
 * @returns Promise<boolean> 是否成功
 */
export const saveTribute = async (tributeData: Partial<Tribute>): Promise<boolean> => {
  try {
    console.log('接收到保存tribute请求');
    console.log('请求数据:', tributeData);
    
    // 生成新的ID
    const newId = generateNewId();
    console.log('生成新的ID:', newId);
    
    // 创建完整的tribute对象
    const tribute: Tribute = {
      id: newId,
      title: tributeData.title || '',
      link: tributeData.link || '',
      summary: tributeData.summary || '',
      keywords: tributeData.keywords || { predefined: [], extracted: [] },
      uploadedFile: tributeData.uploadedFile || undefined,
      author: tributeData.author || '',
      publisher: tributeData.publisher || '',
      date: tributeData.date || '',
      chapter: tributeData.chapter || '',
      tag: tributeData.tag || '',
      remarks: tributeData.remarks || ''
    };
    
    // 添加到内存存储
    tributes.push(tribute);
    console.log('添加到内存存储，当前总数:', tributes.length);
    
    // 如果有关联的URL，尝试抓取网页
    if (tribute.link && !tribute.uploadedFile) {
      try {
        console.log('开始抓取网页:', tribute.link);
        
        // 检查目录是否存在
        const fs = require('fs');
        const path = require('path');
        const origsDir = path.join(__dirname, '../../archives/origs');
        const commentsDir = path.join(__dirname, '../../archives/comments');
        
        if (!fs.existsSync(origsDir)) {
          fs.mkdirSync(origsDir, { recursive: true });
        }
        if (!fs.existsSync(commentsDir)) {
          fs.mkdirSync(commentsDir, { recursive: true });
        }
        
        // 准备文件路径
        const htmlPath = path.join(origsDir, `${newId}.html`);
        console.log('准备将HTML保存到:', htmlPath);
        
        // 抓取并保存网页
        const success = await fetchAndSaveWebpage(tribute.link, htmlPath);
        
        if (!success) {
          console.warn('网页抓取失败，但继续保存元数据');
        }
        
        // 创建评论文件
        const commentPath = path.join(commentsDir, `${newId}- ${tribute.title}.md`);
        console.log('尝试写入评论文件:', commentPath);
        
        const commentContent = `# ${tribute.title}\n\n链接: ${tribute.link}\n\n摘要: ${tribute.summary}\n\n关键词: ${tribute.keywords?.extracted?.join(', ') || ''}\n\n`;
        fs.writeFileSync(commentPath, commentContent);
        console.log('评论文件创建成功:', commentPath);
        
      } catch (error) {
        console.error('抓取网页时出错:', error);
        // 即使抓取失败，也继续保存元数据
      }
    }
    
    // 更新archives.json
    try {
      console.log('开始更新archives.json');
      await recompileArchivesJson();
      console.log('archives.json更新成功');
    } catch (error) {
      console.error('更新archives.json时出错:', error);
    }
    
    console.log('保存tribute数据完成');
    return true;
  } catch (error) {
    console.error('保存tribute时出错:', error);
    return false;
  }
};
