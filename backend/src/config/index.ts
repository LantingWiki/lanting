import dotenv from 'dotenv';
import path from 'path';

// Load environment variables
dotenv.config();

// 默认的archives目录路径是backend/archives文件夹
// 注意：这与之前的配置不同，之前是项目根目录下的archives文件夹
const defaultArchivesPath = path.join(process.cwd(), '.', 'archives');

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
  }
};

export default config;
