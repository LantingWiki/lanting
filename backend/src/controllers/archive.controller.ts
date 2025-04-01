import { Request, Response } from 'express';

// Mock data for demo purposes
const archives = [
  { id: 1, title: '三国志', author: '陈寿', date: '280 CE', content: '蜀书·先主传' },
  { id: 2, title: '史记', author: '司马迁', date: '94 BCE', content: '货殖列传' },
  { id: 3, title: '资治通鉴', author: '司马光', date: '1084 CE', content: '唐纪' }
];

/**
 * Get all archives
 * @route GET /api/archives
 */
export const getArchives = (req: Request, res: Response): void => {
  try {
    res.status(200).json({
      success: true,
      count: archives.length,
      data: archives
    });
  } catch (error) {
    res.status(500).json({
      success: false,
      error: 'Server Error'
    });
  }
};

/**
 * Get single archive by ID
 * @route GET /api/archives/:id
 */
export const getArchiveById = (req: Request, res: Response): void => {
  try {
    const archive = archives.find(a => a.id === parseInt(req.params.id));

    if (!archive) {
      res.status(404).json({
        success: false,
        error: 'Archive not found'
      });
      return;
    }

    res.status(200).json({
      success: true,
      data: archive
    });
  } catch (error) {
    res.status(500).json({
      success: false,
      error: 'Server Error'
    });
  }
};
