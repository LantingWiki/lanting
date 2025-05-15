import OpenAI from 'openai';

interface DeepseekAnalysisResult {
  summary: string;
  keywords: {
    predefined: string[];
    extracted: string[];
  };
}

class DeepseekService {
  private client: OpenAI;
  private model: string = 'deepseek/deepseek-v3-turbo';
  private maxTokens: number = 1000;

  constructor(apiKey: string) {
    this.client = new OpenAI({
      baseURL: 'https://api.ppinfra.com/v3/openai',
      apiKey: apiKey,
    });
  }

  /**
   * 分析文章内容，生成摘要和提取关键词
   * @param title 文章标题
   * @param content 文章内容
   * @param maxKeywords 最大关键词数量
   * @returns 分析结果
   */
  async analyzeContent(title: string, content: string, maxKeywords: number = 15): Promise<DeepseekAnalysisResult> {
    try {
      const prompt = `
请分析以下文章内容，并完成以下任务：

1. 生成一个简洁的摘要（不超过200字）
2. 提取${maxKeywords}个关键词（用逗号分隔）

文章标题：${title}
文章内容：${content}

请以JSON格式返回结果，格式如下：
{
  "summary": "文章摘要",
  "keywords": {
    "extracted": ["关键词1", "关键词2", ...]
  }
}
`;

      const response = await this.client.chat.completions.create({
        model: this.model,
        messages: [
          {
            role: 'system',
            content: '你是一个专业的文章分析助手，擅长生成文章摘要和提取关键词。请确保返回的结果是有效的JSON格式。'
          },
          {
            role: 'user',
            content: prompt
          }
        ],
        max_tokens: this.maxTokens,
        temperature: 0.3,
      });

      const result = this.parseResponse(response.choices[0].message.content);
      return result;
    } catch (error) {
      console.error('Deepseek API 调用失败:', error);
      throw new Error('文章分析失败，请稍后重试');
    }
  }

  /**
   * 解析 API 响应
   * @param response API 返回的文本
   * @returns 解析后的结果
   */
  private parseResponse(response: string | null): DeepseekAnalysisResult {
    if (!response) {
      throw new Error('API 返回为空');
    }

    try {
      // 尝试直接解析 JSON
      const result = JSON.parse(response);
      return {
        summary: result.summary || '',
        keywords: {
          predefined: [],
          extracted: result.keywords?.extracted || []
        }
      };
    } catch (error) {
      // 如果直接解析失败，尝试提取 JSON 部分
      const jsonMatch = response.match(/\{[\s\S]*\}/);
      if (jsonMatch) {
        try {
          const result = JSON.parse(jsonMatch[0]);
          return {
            summary: result.summary || '',
            keywords: {
              predefined: [],
              extracted: result.keywords?.extracted || []
            }
          };
        } catch (e) {
          console.error('JSON 解析失败:', e);
        }
      }
      
      // 如果还是失败，返回默认值
      return {
        summary: '',
        keywords: {
          predefined: [],
          extracted: []
        }
      };
    }
  }
}

// 导出单例实例
export const deepseekService = new DeepseekService('sk_ZAniEhN1549swpK6liJsKXv77njXTHlRaUljrYs5KmY'); 