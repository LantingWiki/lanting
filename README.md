# Lanting

Palette: #F4E285 #F4A259 #7A4419 #755C1B

# Workflow

[] 自己的tag排序
[] archives把数据理好
[] 太大了, comments也抽出去, 单独说

### 数据源
[x] 批量导入现有的, 所有的过一遍 (这里不需要建comments)
[ ] 批量导入evernote但是没有comments的 (这里需要建comments)

[x] 浏览器里右键save singlefile
[ ] 之后如果微信等需要存, 就做一个接口. headless browser + singleFile CLI
**以上两个都需要同时建comments, 尽量抽metadata**

### 放的路径
[x] orig肯定要放public了
[x] 生成archive.json放assets
[x] 随园食单不要直接import了, fetch, 就可以也放到public

### obsidian集成
整个变成一个vault, 应该没问题, 编辑的时候也OK

### 对应关系
放在archive.json, 什么后缀名
从public读, 链接先直接跳到orig, 以后考虑iframe?

### 哪些东西fetch
archive.json会不会越来越大. 如果会, 就把remarks字段也用fetch

# TODOs

### 聚合

兰亭 - 兰亭已矣
芦柑 - 芦柑笔谈
异端 - 异端十二

### clipper
两个用例: 微信上存链接 - 公众号. 电脑上打开页面 - chrome extension
[] 把 joplin 插件代码找到
[] 还是存到本地不变, 路径变一下, 文件名变一下只需要 ID. ID 哪里来? 去 repo 查. 不要打本地, 打接口, 然后本地 pull 吧
[] 从第一行解析出标题, 试图解析出 metadata, 解析最后 metadata 里有用的部分. 建对应的 orig 和 comment, metadata都放comment, 都进入compile流程. 通过 ID 来对应. 有了就不建, 等于是补全.
[] 上传源文件到 OSS. repo 里也存一份只用来存档, 来判断有没有, 页面直接拼 URL -> 可以! markdown这边, 改下代码想办法让图片跟markdown塞在一起吧
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
[ ] 照着抄先. 给个评星功能?
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
