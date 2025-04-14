import express from 'express';
import multer from 'multer';
import path from 'path';
import fs from 'fs';
import config from '../config';
import { saveTribute, getTributeInfo, getAllTributes, getArchivedContent, extractHtmlInfo } from '../controllers/tribute.controller';
import { Request } from 'express';

const router = express.Router();

// 确保uploads目录存在
const uploadDir = path.join(process.cwd(), 'tmp', 'uploads');
if (!fs.existsSync(uploadDir)) {
  fs.mkdirSync(uploadDir, { recursive: true });
}

// 设置multer存储配置
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, uploadDir);
  },
  filename: function (req, file, cb) {
    // 使用时间戳+原始文件名，避免文件名冲突
    const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9);
    cb(null, uniqueSuffix + '-' + file.originalname);
  }
});

// 文件过滤器 - 允许的文件类型：HTML, PDF, PNG, JPG
const fileFilter = (req: any, file: Express.Multer.File, cb: multer.FileFilterCallback) => {
  // 检查文件MIME类型
  if (
    file.mimetype === 'text/html' ||
    file.mimetype === 'application/pdf' ||
    file.mimetype === 'image/png' ||
    file.mimetype === 'image/jpeg'
  ) {
    // 接受文件
    cb(null, true);
  } else {
    // 检查文件扩展名
    const ext = path.extname(file.originalname).toLowerCase();
    if (['.html', '.pdf', '.png', '.jpg', '.jpeg'].includes(ext)) {
      // 接受文件
      cb(null, true);
    } else {
      // 拒绝文件
      cb(new Error('不支持的文件类型'));
    }
  }
};

const upload = multer({
  storage: storage,
  fileFilter: fileFilter,
  limits: {
    fileSize: 50 * 1024 * 1024, // 50 MB 文件大小限制
  }
});

// POST save tribute data with optional file upload
// 支持各种文件类型
router.post('/save', upload.single('file'), saveTribute);

// GET get tribute info from link (query param)
router.get('/info', getTributeInfo);

// POST extract info from uploaded HTML file
router.post('/extract-html', upload.single('htmlFile'), extractHtmlInfo);

// POST get tribute info from link
router.post('/info', getTributeInfo);

// GET all tributes
router.get('/all', getAllTributes);

// GET archived webpage content
router.get('/content/:filename', getArchivedContent);

export default router;
