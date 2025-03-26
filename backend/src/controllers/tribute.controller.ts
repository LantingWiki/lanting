import { Request, Response } from 'express';
import * as tributeService from '../services/tribute.service';
import { Tribute } from '../types/tribute.types';
import fs from 'fs';
import path from 'path';

/**
 * Save tribute data
 * @route POST /api/archive/tribute/save
 */
export const saveTribute = async (req: Request, res: Response): Promise<void> => {
  try {
    const tributeData: Tribute = req.body;

    // Validate required fields
    if (!tributeData.link || !tributeData.title) {
      res.status(400).json({
        status: 'fail',
        code: 'MISSING_REQUIRED_FIELDS',
        message: 'Link and title are required'
      });
      return;
    }

    // Save tribute using service
    await tributeService.saveTribute(tributeData);

    res.status(200).json({
      status: 'success',
      message: 'Tribute saved successfully',
      data: {
        archivePath: tributeData.archivePath
      }
    });
  } catch (error) {
    console.error('Error saving tribute:', error);
    res.status(500).json({
      status: 'fail',
      code: 'SERVER_ERROR',
      message: 'Internal server error'
    });
  }
};

/**
 * Get tribute info from link
 * @route POST /api/archive/tribute/info
 */
export const getTributeInfo = async (req: Request, res: Response): Promise<void> => {
  try {
    const link = req.body;

    if (!link) {
      res.status(400).json({
        status: 'fail',
        code: 'MISSING_LINK',
        message: 'Link is required'
      });
      return;
    }

    // Get info using service
    const info = await tributeService.getTributeInfo(link);

    res.status(200).json({
      status: 'success',
      data: info
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

    // 构建文件路径
    const archivesDir = path.join(process.cwd(), 'archives');
    const filePath = path.join(archivesDir, filename);

    // 检查文件是否存在
    if (!fs.existsSync(filePath)) {
      res.status(404).json({
        status: 'fail',
        code: 'FILE_NOT_FOUND',
        message: 'Archived file not found'
      });
      return;
    }

    // 读取存档文件内容
    const content = fs.readFileSync(filePath, 'utf8');

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
