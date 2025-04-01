# 兰亭文存 (Lanting)

根目录运行：
yarn install
yarn start

后端backend目录运行：
yarn install
yarn dev
## 项目结构

## 主要功能

- 文章存档和展示
- 点赞功能
- 搜索功能
- 网页剪藏工具

# Workflow
待书写

# Tribute页面 - 添加新archive

<!-- 1. 页面上很多input, 不用用户全都手动填

2. 首先最重要的是第一个field, link. 填了link之后, onblur (也就是lose focus), 
就来调我一个后端接口, `https://lanting.wiki/api/user/tribute/info?link=https://xxxxxx`. 后端会返回

```json
{
  "status": "success",
  "code": "",
  "data": {
    "title": "某某标题",
    "author": "某某作者",
    "publisher": "某某报社",
    "date": "2016-12"
  }
}
```
3. 注意如果某个字段没提取出来, 会给null. 比如 `title: null`. 另外注意date是一个string, 格式`yyyy-mm`

4. 这时候, 把收到的几个字段, 如果有值, 就填到下面. 如果没值就没办法了, 留空

5. 用户会填好其他几个field. 都是string就行, 我后端会处理格式

6. 填好之后, 发一个post request, `https://lanting.wiki/api/user/tribute/save`, body里面带着所有field. 完美, 完事 -->
