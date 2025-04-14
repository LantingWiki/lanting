import dotenv from 'dotenv';
import path from 'path';
import os from 'os';

// Load environment variables
dotenv.config();

// 默认的archives目录路径是backend/archives文件夹
// 注意：这与之前的配置不同，之前是项目根目录下的archives文件夹
const defaultArchivesPath = path.join(process.cwd(), '.', 'archives');

// 根据操作系统确定默认的Chrome路径
const getDefaultChromePath = (): string => {
  const platform = os.platform();
  
  if (platform === 'darwin') {
    // macOS
    return '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome';
  } else if (platform === 'win32') {
    // Windows
    return 'C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe';
  } else {
    // Linux/其他
    return '/usr/bin/google-chrome';
  }
};

const config = {
  // Server configuration
  port: process.env.PORT || 15123,
  nodeEnv: process.env.NODE_ENV || 'development',

  // MongoDB configuration (if needed)
  mongoUri: process.env.MONGO_URI || 'mongodb://localhost:27017/lanting',

  // API configuration
  apiPrefix: '/api',

  // CORS configuration
  corsOrigin: '*',

  // JWT configuration (if needed)
  jwtSecret: process.env.JWT_SECRET || 'lanting-secret-key',
  jwtExpiration: process.env.JWT_EXPIRATION || '1d',

  // Archives configuration
  archives: {
    // 主archives目录 - 可以通过环境变量覆盖
    rootDir: process.env.ARCHIVES_ROOT_DIR || defaultArchivesPath,
    // archives的访问URL路径
    urlPath: process.env.ARCHIVES_URL_PATH || '/archives',
    // 子目录
    subdirs: {
      origs: 'origs',
      comments: 'comments',
      imgs: 'imgs'
    }
  },
  
  // Chrome路径 - 用于single-file-cli网页抓取
  chromePath: process.env.CHROME_PATH || getDefaultChromePath(),

  // 百度AI API配置
  baiduAI: {
    apiKey: process.env.BAIDU_AI_API_KEY || '',
    secretKey: process.env.BAIDU_AI_SECRET_KEY || '',
    // 缓存设置 - 默认缓存时间1小时（毫秒）
    cacheTime: Number(process.env.BAIDU_AI_CACHE_TIME) || 3600000
  }
};

export default config;
