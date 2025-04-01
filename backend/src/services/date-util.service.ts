/**
 * 从字符串中提取日期并格式化为YYYY-MM-DD(如果可能)
 * @param text 可能包含日期的字符串
 * @returns 格式化的日期对象，包含date(YYYY-MM-DD)
 */
export const dateUtil = {
  /**
   * 从字符串中提取日期
   * @param text 可能包含日期的字符串
   * @returns 日期对象
   */
  extractDateFromString(text: string): { date: string } | null {
    // 如果文本为空，直接返回null
    if (!text) return null;

    try {
      // 尝试各种正则表达式匹配
      // YYYY-MM-DD 或 YYYY/MM/DD
      let match = text.match(/\b(20\d{2})[/-](0[1-9]|1[0-2])[/-](0[1-9]|[12]\d|3[01])\b/);
      if (match) {
        return {
          date: `${match[1]}-${match[2]}-${match[3]}`
        };
      }

      // DD-MM-YYYY 或 DD/MM/YYYY
      match = text.match(/\b(0[1-9]|[12]\d|3[01])[/-](0[1-9]|1[0-2])[/-](20\d{2})\b/);
      if (match) {
        return {
          date: `${match[3]}-${match[2]}-${match[1]}`
        };
      }

      // MM-DD-YYYY 或 MM/DD/YYYY
      match = text.match(/\b(0[1-9]|1[0-2])[/-](0[1-9]|[12]\d|3[01])[/-](20\d{2})\b/);
      if (match) {
        return {
          date: `${match[3]}-${match[1]}-${match[2]}`
        };
      }

      // 英文月份格式：Month DD, YYYY
      const monthNames = {
        january: '01', february: '02', march: '03', april: '04', may: '05', june: '06',
        july: '07', august: '08', september: '09', october: '10', november: '11', december: '12'
      };

      match = text.match(/\b(January|February|March|April|May|June|July|August|September|October|November|December)\s+(\d{1,2})(?:st|nd|rd|th)?,\s+(20\d{2})\b/i);
      if (match) {
        const month = monthNames[match[1].toLowerCase()];
        const day = match[2].padStart(2, '0');
        return {
          date: `${match[3]}-${month}-${day}`
        };
      }

      // 英文月份格式：DD Month YYYY
      match = text.match(/\b(\d{1,2})(?:st|nd|rd|th)?\s+(January|February|March|April|May|June|July|August|September|October|November|December)\s+(20\d{2})\b/i);
      if (match) {
        const month = monthNames[match[2].toLowerCase()];
        const day = match[1].padStart(2, '0');
        return {
          date: `${match[3]}-${month}-${day}`
        };
      }

      // 中文日期格式：YYYY年MM月DD日
      match = text.match(/\b(20\d{2})年\s*([01]?\d)月\s*([0-3]?\d)日\b/);
      if (match) {
        const month = match[2].padStart(2, '0');
        const day = match[3].padStart(2, '0');
        return {
          date: `${match[1]}-${month}-${day}`
        };
      }

      // 仅年月格式：YYYY-MM 或 YYYY/MM
      match = text.match(/\b(20\d{2})[/-](0[1-9]|1[0-2])\b/);
      if (match) {
        // 为了统一格式，添加当月的最后一天作为日期
        const year = parseInt(match[1]);
        const month = parseInt(match[2]);
        const lastDay = new Date(year, month, 0).getDate();
        return {
          date: `${match[1]}-${match[2]}-${lastDay.toString().padStart(2, '0')}`
        };
      }

      // 仅年月格式：MM-YYYY 或 MM/YYYY
      match = text.match(/\b(0[1-9]|1[0-2])[/-](20\d{2})\b/);
      if (match) {
        // 为了统一格式，添加当月的最后一天作为日期
        const year = parseInt(match[2]);
        const month = parseInt(match[1]);
        const lastDay = new Date(year, month, 0).getDate();
        return {
          date: `${match[2]}-${match[1]}-${lastDay.toString().padStart(2, '0')}`
        };
      }

      // 仅年月格式：Month YYYY
      match = text.match(/\b(January|February|March|April|May|June|July|August|September|October|November|December)\s+(20\d{2})\b/i);
      if (match) {
        const month = monthNames[match[1].toLowerCase()];
        // 为了统一格式，添加当月的最后一天作为日期
        const year = parseInt(match[2]);
        const monthNum = parseInt(month);
        const lastDay = new Date(year, monthNum, 0).getDate();
        return {
          date: `${match[2]}-${month}-${lastDay.toString().padStart(2, '0')}`
        };
      }

      // 仅年月格式：YYYY年MM月
      match = text.match(/\b(20\d{2})年\s*([01]?\d)月\b/);
      if (match) {
        const month = match[2].padStart(2, '0');
        // 为了统一格式，添加当月的最后一天作为日期
        const year = parseInt(match[1]);
        const monthNum = parseInt(month);
        const lastDay = new Date(year, monthNum, 0).getDate();
        return {
          date: `${match[1]}-${month}-${lastDay.toString().padStart(2, '0')}`
        };
      }

      // 尝试自然语言日期解析
      // 例如 "Published 3 days ago", "Posted on 2023"
      if (text.match(/\b20\d{2}\b/)) {
        // 如果包含年份，尝试将整个字符串作为日期解析
        const date = new Date(text);
        if (!isNaN(date.getTime())) {
          const year = date.getFullYear();
          const month = (date.getMonth() + 1).toString().padStart(2, '0');
          const day = date.getDate().toString().padStart(2, '0');
          return {
            date: `${year}-${month}-${day}`
          };
        }
      }

      return null;
    } catch (error) {
      console.error('Error in extractDateFromString:', error);
      return null;
    }
  }
};
