# Lanting
Palette: #F4E285 #F4A259 #7A4419 #755C1B

# Workflow
[x] 日期特殊排序
[x] 自己的tag排序
[x] archives就把数据理好
[x] 文章排序? 用星期做种子乱序!
[x] 芦柑笔谈 in menu
[x] 评分功能, 所有东西进DB吧, DB可以commit进来. mongo适合点?
[x] 评分优化性能
[x] 评分筛选
[x] 重做redux tree design. 只存在一个地方, 一个大map. 其他地方记ID, 不记数据. map的subtree给很多地方
[x] 单个article link, title就link到single page
[ ] archive.json会不会越来越大. 如果会, 就把remarks字段也用fetch. 前X个char在archives.json, 展开的时候fetch. 怎么判断有没有更多 (除了加property, flag)? 看字数行不行. 如果现在的是小于50, 比如49. 就没有. 如果50整, 就有. 怎么解决刚好50的comment? 我能想到的只有砍掉一个char... 哦! 有主意了. 加一个. 弄成51个. 所以凡是[1, 49], [51, Inf], 都是不用展开的
[x] 渲染两次问题?? -> 好像没有这个现象了?... 第一次渲染之后就有东西了?
[x] 加上ID, 灰一点

# Tribute页面 - 添加新archive

1. 页面上很多input, 不用用户全都手动填

2. 首先最重要的是第一个field, link. 填了link之后, onblur (也就是lose focus), 就来调我一个后端接口, `https://lanting.wiki/api/user/tribute/info?link=https://xxxxxx`. 后端会返回

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

6. 填好之后, 发一个post request, `https://lanting.wiki/api/user/tribute/save`, body里面带着所有field. 完美, 完事

### 数据源
[x] 批量导入现有的, 所有的过一遍 (这里不需要建comments)
[x] 批量导入evernote但是没有comments的 (这里需要建comments)
[x] 浏览器里右键save singlefile
[ ] 之后如果微信等需要存, 就做一个接口. headless browser + singleFile CLI
**以上两个都需要同时建comments, 尽量抽metadata**

### 放的路径
[x] orig肯定要放public了
[x] 生成archive.json放assets
[x] 随园食单不要直接import了, fetch, 就可以也放到public

### obsidian集成
[x] 整个变成一个vault, 应该没问题, 编辑的时候也OK

### 对应关系
[x] 放在archive.json, 什么后缀名
[x] 从public读, 链接先直接跳到orig, 以后考虑iframe?

# TODOs

### 聚合

兰亭 - 兰亭文存
芦柑 - 芦柑笔谈
异端 - 异端十二

### clipper
两个用例: 微信上存链接 - 公众号. 电脑上打开页面 - chrome extension
[x] 把 joplin 插件代码找到
[x] 还是存到本地不变, 路径变一下, 文件名变一下只需要 ID. ID 哪里来? 去 repo 查. 不要打本地, 打接口, 然后本地 pull 吧
[x] 从第一行解析出标题, 试图解析出 metadata, 解析最后 metadata 里有用的部分. 建对应的 orig 和 comment, metadata都放comment, 都进入compile流程. 通过 ID 来对应. 有了就不建, 等于是补全.
[ ] 上传源文件到 OSS. repo 里也存一份只用来存档, 来判断有没有, 页面直接拼 URL -> 可以! markdown这边, 改下代码想办法让图片跟markdown塞在一起吧 -> 用OSS那份非https的?
综合webclipper, 第一图片怎么处理, 第二css是不是OK, 第三下下来之后触发什么

### 数据
[x]批量现有的导过来

### compile
[x] compile-archives产出一个 json, metadata
[x] 少了一些字段, 等orig好了才能好. 还有就是找不到没有的情况
[x] 实际量大的数据主要去实际.md 里面找

### 筛选
~~分页的话也要给文本搜索框, 不分页先不要~~
~~不喜欢立刻生效的, 可以给个选了tag之后的确认按钮~~
[x] 缩上去, 放上面

### 展示文章
[x] 照着抄先. 给个评星功能?
[x] 分chapter
[x] 本纪
[x] 随园食单

### 部署
[x] 包, 小小小
[x] 按需加载, archives.json不打包

### styles
[x] ant card body
[x] padding: 16px 0;

[x] collapse header
[x] padding: 0;
[x] font-size: 20px;
[x] line-height: 1;

# 后端架构

## mysql
把现在的metadata装到一个表里. 把静态文件的部分存一个链接或者说是object id, 能去云服务里找到

## S3
html静态文件的部分, 存到object store一类的里面. 设为private, 访问的时候用access key

## 存文章
不管是本地还是远程, 还是手机, 都用网页来存. 存了的网页可以preview, 如果preview结果不对, 允许手动上传 (还允许上传多个)
存的时候摒弃现在的git commit的方式, 而是做 上传 -> mysql -> OK
这样ID也是从数据库来

## 读文章
为了前端速度, 现在还是可以打包到前端. 也就是 mysql -> 生成一个json -> 打到包里
