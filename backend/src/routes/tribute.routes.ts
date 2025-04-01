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

const upload = multer({ storage: storage });

// POST save tribute data with optional file upload
router.post('/save', upload.single('htmlFile'), saveTribute);

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
