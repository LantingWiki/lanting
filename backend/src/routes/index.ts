import express from 'express';
import archiveRoutes from './archive.routes';
import tributeRoutes from './tribute.routes';
import fs from 'fs';
import path from 'path';
import config from '../config';
import * as archiveManager from '../services/archive-manager.service';

const router = express.Router();

// Health check route
router.get('/health', (req, res) => {
  res.status(200).json({ status: 'ok', message: 'API is running' });
});

// Debug route - Check archives directories
router.get('/debug/dirs', (req, res) => {
  try {
    const archivesDir = config.archives.rootDir;
    const origsDir = path.join(archivesDir, config.archives.subdirs.origs);
    const commentsDir = path.join(archivesDir, config.archives.subdirs.comments);
    
    interface DirectoryInfo {
      path: string;
      exists: boolean;
      isDirectory: boolean;
      writable: boolean;
      readable: boolean;
      files: string[];
    }
    
    const result: {
      status: string;
      archivesDir: DirectoryInfo;
      origsDir: DirectoryInfo;
      commentsDir: DirectoryInfo;
    } = {
      status: 'ok',
      archivesDir: {
        path: archivesDir,
        exists: fs.existsSync(archivesDir),
        isDirectory: fs.existsSync(archivesDir) && fs.statSync(archivesDir).isDirectory(),
        writable: false,
        readable: false,
        files: []
      },
      origsDir: {
        path: origsDir,
        exists: fs.existsSync(origsDir),
        isDirectory: fs.existsSync(origsDir) && fs.statSync(origsDir).isDirectory(),
        writable: false,
        readable: false,
        files: []
      },
      commentsDir: {
        path: commentsDir,
        exists: fs.existsSync(commentsDir),
        isDirectory: fs.existsSync(commentsDir) && fs.statSync(commentsDir).isDirectory(),
        writable: false,
        readable: false,
        files: []
      }
    };
    
    // 检查权限
    if (result.archivesDir.exists) {
      try {
        fs.accessSync(archivesDir, fs.constants.R_OK);
        result.archivesDir.readable = true;
      } catch (e) {
        console.error('Archives目录不可读:', e);
      }
      
      try {
        fs.accessSync(archivesDir, fs.constants.W_OK);
        result.archivesDir.writable = true;
      } catch (e) {
        console.error('Archives目录不可写:', e);
      }
      
      try {
        result.archivesDir.files = fs.readdirSync(archivesDir);
      } catch (e) {
        console.error('无法读取Archives目录内容:', e);
      }
    }
    
    if (result.origsDir.exists) {
      try {
        fs.accessSync(origsDir, fs.constants.R_OK);
        result.origsDir.readable = true;
      } catch (e) {
        console.error('Origs目录不可读:', e);
      }
      
      try {
        fs.accessSync(origsDir, fs.constants.W_OK);
        result.origsDir.writable = true;
      } catch (e) {
        console.error('Origs目录不可写:', e);
      }
      
      try {
        result.origsDir.files = fs.readdirSync(origsDir);
      } catch (e) {
        console.error('无法读取Origs目录内容:', e);
      }
    }
    
    if (result.commentsDir.exists) {
      try {
        fs.accessSync(commentsDir, fs.constants.R_OK);
        result.commentsDir.readable = true;
      } catch (e) {
        console.error('Comments目录不可读:', e);
      }
      
      try {
        fs.accessSync(commentsDir, fs.constants.W_OK);
        result.commentsDir.writable = true;
      } catch (e) {
        console.error('Comments目录不可写:', e);
      }
      
      try {
        result.commentsDir.files = fs.readdirSync(commentsDir);
      } catch (e) {
        console.error('无法读取Comments目录内容:', e);
      }
    }
    
    res.status(200).json(result);
  } catch (err: any) {
    console.error('调试路由错误:', err);
    res.status(500).json({ status: 'error', message: err.message });
  }
});

// Debug route - Recompile archives.json
router.get('/debug/recompile', async (req, res) => {
  try {
    archiveManager.recompileArchivesJson();
    res.status(200).json({ status: 'ok', message: 'Archives.json recompiled successfully' });
  } catch (err: any) {
    console.error('重新编译archives.json错误:', err);
    res.status(500).json({ status: 'error', message: err.message });
  }
});

// Register route modules
router.use('/archives', archiveRoutes);
router.use('/archive/tribute', tributeRoutes);
router.use('/tribute', tributeRoutes);

export default router;
