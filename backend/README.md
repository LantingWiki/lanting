# 兰亭文存后端 (Lanting Backend)

这是兰亭文存项目的后端 API 服务，基于 Node.js、Express 和 TypeScript 构建。

## 功能特性

- RESTful API 设计
- 基于 TypeScript 的类型安全
- Express 中间件和路由
- 支持环境变量配置
- CORS 支持
- **网页存档系统**：自动抓取、存储和管理网页内容
- **元数据提取**：自动从网页提取标题、作者、发布者等信息
- **ID管理系统**：自动为存档内容分配唯一ID和更新archives.json
- Puppeteer 集成自动提供 Chromium 浏览器
- (未启用) MongoDB 数据库集成

## 项目结构

```
backend/
├── src/                  # 源代码目录
│   ├── cli/              # 命令行工具
│   ├── config/           # 配置文件
│   ├── controllers/      # 控制器 (处理请求逻辑)
│   ├── models/           # 数据模型 (未实现)
│   ├── routes/           # API 路由
│   ├── services/         # 业务逻辑服务
│   ├── tests/            # 测试文件
│   ├── types/            # 类型定义
│   └── index.ts          # 应用入口
├── archives/             # 存储网页存档的根目录 (默认在backend目录内)
│   ├── origs/            # 原始HTML文件存储
│   ├── comments/         # 文章元数据和评论
│   └── archives.json     # 存档索引文件
├── .env                  # 环境变量
├── .env.example          # 环境变量示例
├── package.json          # 项目配置
├── tsconfig.json         # TypeScript 配置
└── README.md             # 项目说明文档
```

## 环境要求

- Node.js >= 14.0.0
- npm >= 6.0.0
- ~~Chrome 或基于 Chromium 的浏览器 (single-file-cli 需要)~~ (已通过 Puppeteer 自动提供)

## 安装依赖

```bash
cd backend
npm install
```

项目已经将 single-file-cli 和 Puppeteer 作为依赖安装，无需全局安装 Chrome 浏览器或其他依赖。

### Puppeteer 集成

本项目集成了 Puppeteer，它会自动下载并提供一个兼容的 Chromium 浏览器，用于 single-file-cli 网页存档。这意味着：

- 无需手动安装 Chrome 浏览器
- 无需配置 `BROWSER_EXECUTABLE_PATH` 环境变量
- 跨平台兼容性更好，在 Windows、Mac 和 Linux 上都能正常工作
- 自动使用正确版本的 Chromium，避免版本兼容性问题

当 `BROWSER_EXECUTABLE_PATH` 环境变量未设置时，系统会自动使用 Puppeteer 提供的 Chromium。

### 测试 Puppeteer 集成

项目提供了一个测试脚本，用于验证 Puppeteer 集成和网页存档功能是否正常工作：

```bash
npm run test:puppeteer
```

该脚本会执行以下测试：
1. 启动 Puppeteer 并验证 Chromium 浏览器是否可用
2. 获取 Chromium 可执行文件路径
3. 使用 single-file-cli 和 Puppeteer 提供的 Chromium 存档一个测试网页
4. 验证存档文件是否成功创建

如果测试成功，表明系统已正确配置并可以使用，无需进一步设置。

## 启动服务器

```bash
npm run dev
```

服务器将在 http://localhost:15123 启动（端口可在配置中修改）。

## 配置系统

本项目使用集中式配置管理，所有配置项都在 `src/config/index.ts` 中定义：

```typescript
// 主要配置项
const config = {
  // 服务器配置
  port: process.env.PORT || 15123,

  // Archives 相关配置
  archives: {
    // 主archives目录 - 可以通过环境变量覆盖
    rootDir: process.env.ARCHIVES_ROOT_DIR || defaultArchivesPath,
    // archives的访问URL路径
    urlPath: process.env.ARCHIVES_URL_PATH || '/archives',
    // 子目录结构
    subdirs: {
      origs: 'origs',
      comments: 'comments',
      imgs: 'imgs'
    }
  }
};
```

### Archives 存储路径

默认情况下，archives 文件夹位于 `backend/archives/` 目录下，而不是项目根目录。可以通过以下方式修改：

1. 在 `.env` 文件中设置 `ARCHIVES_ROOT_DIR` 环境变量
2. 在代码中修改 `config/index.ts` 中的默认值

### 静态文件服务

系统自动将 archives 目录作为静态文件提供，可通过 `http://localhost:15123/archives/` 访问。
前端通过设置 `CDN_DOMAIN` 变量来访问这些静态资源。

## API 端点

### 健康检查

- `GET /api/health` - 检查 API 服务状态

### 档案管理

- `GET /api/archives` - 获取所有档案
- `GET /api/archives/:id` - 根据 ID 获取特定档案

### 文章归档 (Tribute)

- `POST /api/archive/tribute/save` - 保存文章归档信息并存档网页
- `POST /api/archive/tribute/info` - 通过链接获取文章信息
- `GET /api/archive/tribute/all` - 获取所有已归档的文章
- `GET /api/archive/tribute/content/:filename` - 获取已存档网页的 HTML 内容

#### 文章归档示例请求

```json
POST /api/archive/tribute/save
{
  "link": "https://example.com/article",
  "title": "示例文章",
  "author": "张三",
  "publisher": "示例出版社",
  "date": "2025-03-25",
  "chapter": "世家",
  "tag": "示例,测试",
  "remarks": "这是一篇测试文章"
}
```

## 网页存档功能

### 1. 通过文章归档API存档网页

使用 `POST /api/archive/tribute/save` 接口，提供文章信息和链接，系统会自动：
1. 存储文章元数据
2. 抓取并存档网页内容
3. 更新 archives.json 文件
4. 为文章分配唯一ID

```bash
curl -X POST http://localhost:15123/api/archive/tribute/save \
  -H "Content-Type: application/json" \
  -d '{
    "link": "https://example.com/article",
    "title": "示例文章",
    "author": "张三",
    "publisher": "示例出版社",
    "date": "2025-03-25",
    "chapter": "世家",
    "tag": "示例,测试",
    "remarks": "这是一篇测试文章"
  }'
```

### 2. 在代码中使用存档服务

```typescript
import { saveTribute } from '../services/tribute.service';

// 保存文章并存档网页
await saveTribute({
  link: 'https://example.com/article',
  title: '示例文章',
  author: '张三',
  publisher: '示例出版社',
  date: '2025-03-25',
  chapter: '世家',
  tag: '示例,测试',
  remarks: '这是一篇测试文章'
});
```

或者使用底层的 singlefile 服务直接存档网页：

```typescript
import * as singleFileService from './services/singlefile.service';

// 生成文件名
const safeFileName = singleFileService.generateSafeFileName('example-page');
// 存档网页
const outputPath = await singleFileService.archiveWebpage(
  'https://example.com',
  safeFileName,
  {
    browserWaitUntil: 'networkidle0'
  }
);
console.log(`网页已存档到: ${outputPath}`);
```

### 3. 存档系统工作流程

1. **存档流程**:
   - 保存文章元数据到内存存储
   - 如果提供了链接，使用 single-file-cli 抓取网页
   - 生成唯一ID（基于 archives.json 中的最大ID）
   - 更新 archives.json 文件，添加新条目
   - 更新频率统计信息（author、tag等）

2. **存储结构**:
   - archives.json: 核心数据索引文件
   - 原始HTML: 日期和标题命名的HTML文件
   - 标准化的档案格式，包含作者、出版方、日期等信息

3. **ID管理**:
   - 自动从 archives.json 中读取现有ID
   - 新ID从现有最大ID + 1生成，首次从10000开始
   - 确保ID唯一且递增

### 4. 单独使用 single-file-cli

项目提供了多种方式使用 single-file-cli 存档网页：

#### 使用命令行方式

```bash
# 原始 single-file-cli 命令行
npm run archive -- "https://example.com" "output.html"

# TypeScript 封装的命令行工具
npm run save-page "https://example.com" "output.html"

# 只提供 URL，文件名自动生成
npm run save-page "https://example.com"
```

#### 在代码中使用基本存档功能

```typescript
import * as singleFileService from './services/singlefile.service';

// 存档网页
async function saveWebpage(url: string) {
  const fileName = singleFileService.generateSafeFileName('my-webpage');
  const outputPath = await singleFileService.archiveWebpage(url, fileName);
  console.log(`Webpage saved to: ${outputPath}`);
}
```

## 构建生产版

```bash
npm run build
npm start
```

## 环境变量

复制 `.env.example` 为 `.env` 并根据需要修改：

```bash
cp .env.example .env
```

主要环境变量：

- `PORT` - 服务器端口 (默认: 15123)
- `NODE_ENV` - 环境 (development/production)
- `CORS_ORIGIN` - 允许的 CORS 源
- `USE_SINGLEFILE_DOCKER` - 是否使用 Docker 模式运行 single-file (true/false)
- `BROWSER_EXECUTABLE_PATH` - Chrome 浏览器可执行文件路径（可选，如未设置将使用 Puppeteer 的 Chromium）
- `ARCHIVES_ROOT_DIR` - 自定义 archives 目录路径（默认为 backend/archives）
- `ARCHIVES_URL_PATH` - 自定义静态文件访问路径（默认为 /archives）

## 数据上传

项目提供了多个脚本用于管理 archives 数据：

```bash
# 编译archives数据
npm run archives:compile

# 上传图片到OSS
npm run archives:upload-imgs

# 上传HTML文件到OSS
npm run archives:upload-origs

# 上传archives.json到OSS
npm run archives:upload-json

# 上传所有资源
npm run archives:upload-all

# 将变更提交到Git
npm run archives:add
```

注意：这些脚本已经设置为使用 `backend/archives` 路径，与配置文件中的默认路径保持一致。

## Linux 服务器部署

在 Linux 服务器上部署时，由于 Puppeteer 和 Chromium 的特性，可能会遇到一些问题。以下是常见问题的解决方案：

### 1. Chromium 启动失败

如果遇到 "Failed to launch the browser process" 或 "spawn chrome ENOENT" 错误，这通常是因为服务器缺少 Chromium 运行所需的依赖库或配置问题。

**解决方案:**

安装所需的系统依赖：

```bash
# 对于 Ubuntu/Debian 系统
sudo apt-get update
sudo apt-get install -y \
    libx11-xcb1 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxi6 \
    libxtst6 \
    libnss3 \
    libcups2 \
    libxss1 \
    libxrandr2 \
    libasound2 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libpangocairo-1.0-0 \
    libgtk-3-0 \
    libgbm1

# 对于 CentOS/RHEL 系统
sudo yum install -y \
    pango.x86_64 \
    libXcomposite.x86_64 \
    libXcursor.x86_64 \
    libXdamage.x86_64 \
    libXext.x86_64 \
    libXi.x86_64 \
    libXtst.x86_64 \
    cups-libs.x86_64 \
    libXScrnSaver.x86_64 \
    libXrandr.x86_64 \
    GConf2.x86_64 \
    alsa-lib.x86_64 \
    atk.x86_64 \
    gtk3.x86_64 \
    ipa-gothic-fonts \
    xorg-x11-fonts-100dpi \
    xorg-x11-fonts-75dpi \
    xorg-x11-utils \
    xorg-x11-fonts-cyrillic \
    xorg-x11-fonts-Type1 \
    xorg-x11-fonts-misc
```

### 2. 权限和安全问题

Linux 服务器可能有沙盒限制和安全策略。

**解决方案:**

在 `.env` 文件中添加以下配置：

```bash
# 可选：指定已安装的Chrome浏览器路径
BROWSER_EXECUTABLE_PATH=/usr/bin/google-chrome
```

如果您使用的是共享主机或有特殊限制的环境，可能需要安装 Chrome：

```bash
# 安装 Chrome 浏览器
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
```

### 3. 内存限制

某些服务器可能有内存限制，导致 Chromium 启动失败。

**解决方案:**

在低内存环境下，可以考虑以下方案：

1. 增加服务器的交换空间
   ```bash
   sudo fallocate -l 1G /swapfile
   sudo chmod 600 /swapfile
   sudo mkswap /swapfile
   sudo swapon /swapfile
   ```

2. 或者使用小内存配置启动 Chromium
   ```bash
   # 在 .env 文件中设置
   BROWSER_ARGS=--disable-dev-shm-usage --disable-gpu --no-sandbox --single-process
   ```
