import { parse } from 'querystring';

/* eslint no-useless-escape:0 import/prefer-default-export:0 */
const reg = /(((^https?:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+(?::\d+)?|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)$/;

export const isUrl = (path: string): boolean => reg.test(path);

export const getPageQuery = () => parse(window.location.href.split('?')[1]);

export const fieldToTranslation = {
  author: '作者',
  publisher: '媒体',
  date: '年月',
  tag: '标签',
};

export const toChineseNumbers = (temp: string) => {
  const units = ['十', '百', '千', '万', '十', '百', '千', '亿'];
  const numeric = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];

  let res = '';
  for (let k = -1; temp.length > 0; k++) {
    // 解析最后一位
    const j = +temp[temp.length - 1];
    let rtemp = numeric[j];
    // 数值不是0且不是个位 或者是万位或者是亿位 则去取单位
    if ((j !== 0 && k !== -1) || k % 8 === 3 || k % 8 === 7) {
      rtemp += units[k % 8];
    }
    // 拼在之前的前面
    res = rtemp + res;
    // 去除最后一位
    temp = temp.substring(0, temp.length - 1);
  }
  // 去除后面连续的零零..
  while (res.endsWith(numeric[0])) {
    res = res.substring(0, res.lastIndexOf(numeric[0]));
  }
  // 将零零替换成零
  while (res.includes(numeric[0] + numeric[0])) {
    res = res.replace(numeric[0] + numeric[0], numeric[0]);
  }
  // 将 零+某个单位 这样的窜替换成 该单位 去掉单位前面的零
  for (let m = 1; m < units.length; m++) {
    res = res.replace(numeric[0] + units[m], units[m]);
  }
  // 将壹十 壹百 去掉壹
  if (res.startsWith(numeric[1])) {
    res = res.substring(1);
  }
  return res;
};

// console.log(toChineseNumbers('100'));
// console.log(toChineseNumbers('101'));
// console.log(toChineseNumbers('110'));
// console.log(toChineseNumbers('111'));

// console.log(toChineseNumbers('300'));
// console.log(toChineseNumbers('900'));
// console.log(toChineseNumbers('999'));

// console.log(toChineseNumbers('768'));
