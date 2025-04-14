import { Request, Response } from 'express';
import { tributeService, archiveContent, Tribute } from '../services';
import fs from 'fs';
import path from 'path';
import config from '../config';

// 使用类型断言来处理 multer 添加的文件
interface RequestWithFile extends Request {
  file?: any; // 使用 any 类型暂时解决类型冲突
}

/**
 * Save tribute data
 * @route POST /api/archive/tribute/save
 */
export const saveTribute = async (req: RequestWithFile, res: Response): Promise<void> => {
  console.log('接收到保存tribute请求');
  
  try {
    let tributeData: Tribute = req.body;

    // 将字符串转换为对象（如果前端发送的是字符串形式的JSON）
    if (typeof req.body === 'string') {
      try {
        tributeData = JSON.parse(req.body);
        console.log('已将字符串转换为JSON对象');
      } catch (error) {
        console.error('Error parsing JSON body:', error);
        res.status(400).json({
          status: 'fail',
          code: 'INVALID_JSON',
          message: 'Invalid JSON in request body'
        });
        return;
      }
    }

    console.log('请求数据:', {
      link: tributeData.link,
      title: tributeData.title,
      hasFile: !!req.file
    });

    // 添加上传的文件路径（如果有）
    if (req.file) {
      // 检查上传的文件是否存在
      if (!fs.existsSync(req.file.path)) {
        console.error(`上传的文件不存在: ${req.file.path}`);
        res.status(400).json({
          status: 'fail',
          code: 'FILE_NOT_FOUND',
          message: 'Uploaded file not found'
        });
        return;
      }
      
      console.log(`检测到上传的文件: ${req.file.path}, 大小: ${fs.statSync(req.file.path).size} 字节`);
      
      // 统一使用 uploadedFile 字段保存文件路径
      tributeData.uploadedFile = req.file.path;
    }

    // Validate required fields
    if (!tributeData.link || !tributeData.title) {
      console.error('缺少必填字段: link或title');
      res.status(400).json({
        status: 'fail',
        code: 'MISSING_REQUIRED_FIELDS',
        message: 'Link and title are required'
      });
      return;
    }

    // Save tribute using service
    try {
      await tributeService.saveTribute(tributeData);
      console.log('tribute保存成功');
      
      // 检查HTML文件是否确实存在
      let htmlFileExists = false;
      let htmlFilePath = '';
      
      if (tributeData.archivePath) {
        const origsDir = path.join(config.archives.rootDir, 'origs');
        htmlFilePath = path.join(origsDir, tributeData.archivePath);
        htmlFileExists = fs.existsSync(htmlFilePath);
      }
      
      // 在响应中返回更多信息，帮助调试
      res.status(200).json({
        status: 'success',
        message: 'Tribute saved successfully',
        data: {
          id: tributeData.id,
          archivePath: tributeData.archivePath,
          fileType: tributeData.fileType,
          title: tributeData.title,
          htmlFileExists: htmlFileExists,
          htmlFilePath: htmlFilePath,
          note: htmlFileExists 
            ? `文件保存成功, ID: ${tributeData.id}` 
            : '元数据已保存，但HTML文件创建失败。您可以稍后再次尝试或手动上传文件。'
        }
      });
    } catch (err: any) {
      console.error('保存tribute过程中发生错误:', err);
      res.status(500).json({
        status: 'fail',
        code: 'SAVE_ERROR',
        message: `保存过程中发生错误: ${err.message || '未知错误'}`
      });
    }
  } catch (error) {
    console.error('处理tribute请求过程中发生未捕获的错误:', error);
    res.status(500).json({
      status: 'fail',
      code: 'SERVER_ERROR',
      message: 'Internal server error'
    });
  }
};

/**
 * Get tribute info from link
 * @route GET /api/tribute/info
 */
export const getTributeInfo = async (req: Request, res: Response): Promise<void> => {
  try {
    // 获取查询参数中的link
    const link = req.query.link as string;

    if (!link) {
      res.status(400).json({
        status: 'fail',
        code: 'MISSING_LINK',
        message: 'Link is required'
      });
      return;
    }

    // 从链接获取信息
    const info = await tributeService.getTributeInfo(link);

    // 返回标准格式的响应
    res.status(200).json({
      status: 'success',
      code: '',
      data: {
        title: info.title || null,
        author: info.author || null,
        publisher: info.publisher || null,
        date: info.date || null,
        summary: info.summary || null,
        keywords: info.keywords || { predefined: [], extracted: [] }
      }
    });
  } catch (error) {
    console.error('Error getting tribute info:', error);
    res.status(500).json({
      status: 'fail',
      code: 'SERVER_ERROR',
      message: 'Internal server error'
    });
  }
};

/**
 * Get all saved tributes
 * @route GET /api/archive/tribute/all
 */
export const getAllTributes = async (req: Request, res: Response): Promise<void> => {
  try {
    const tributes = await tributeService.getAllTributes();

    res.status(200).json({
      status: 'success',
      count: tributes.length,
      data: tributes
    });
  } catch (error) {
    console.error('Error getting all tributes:', error);
    res.status(500).json({
      status: 'fail',
      code: 'SERVER_ERROR',
      message: 'Internal server error'
    });
  }
};

/**
 * Get archived webpage content
 * @route GET /api/archive/tribute/content/:filename
 */
export const getArchivedContent = async (req: Request, res: Response): Promise<void> => {
  try {
    const { filename } = req.params;

    if (!filename) {
      res.status(400).json({
        status: 'fail',
        code: 'MISSING_FILENAME',
        message: 'Filename is required'
      });
      return;
    }

    // 检查文件是否存在
    if (!archiveContent.archivedFileExists(filename)) {
      res.status(404).json({
        status: 'fail',
        code: 'FILE_NOT_FOUND',
        message: 'Archived file not found'
      });
      return;
    }

    // 读取存档文件内容
    const content = await archiveContent.getArchivedContent(filename);

    // 返回 HTML 内容
    res.set('Content-Type', 'text/html');
    res.send(content);
  } catch (error) {
    console.error('Error getting archived content:', error);
    res.status(500).json({
      status: 'fail',
      code: 'SERVER_ERROR',
      message: 'Internal server error'
    });
  }
};

/**
 * Extract tribute info from uploaded HTML file
 * @route POST /api/tribute/extract-html
 */
export const extractHtmlInfo = async (req: RequestWithFile, res: Response): Promise<void> => {
  try {
    if (!req.file) {
      res.status(400).json({
        status: 'fail',
        code: 'MISSING_FILE',
        message: 'HTML file is required'
      });
      return;
    }

    const filePath = req.file.path;

    if (!fs.existsSync(filePath)) {
      res.status(404).json({
        status: 'fail',
        code: 'FILE_NOT_FOUND',
        message: 'Uploaded file not found'
      });
      return;
    }

    // 使用extractHtmlInfo服务函数提取元数据
    const info = await tributeService.extractHtmlInfo(filePath);

    res.status(200).json({
      status: 'success',
      data: {
        title: info.title || null,
        author: info.author || null,
        publisher: info.publisher || null,
        date: info.date || null,
        summary: info.summary || null,
        keywords: info.keywords || { predefined: [], extracted: [] }
      }
    });
  } catch (error) {
    console.error('Error extracting HTML info:', error);
    res.status(500).json({
      status: 'fail',
      code: 'SERVER_ERROR',
      message: 'Internal server error'
    });
  }
};
