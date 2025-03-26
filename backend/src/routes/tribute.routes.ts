import express from 'express';
import { saveTribute, getTributeInfo, getAllTributes, getArchivedContent } from '../controllers/tribute.controller';

const router = express.Router();

// POST save tribute data
router.post('/save', saveTribute);

// POST get tribute info from link
router.post('/info', getTributeInfo);

// GET all tributes
router.get('/all', getAllTributes);

// GET archived webpage content
router.get('/content/:filename', getArchivedContent);

export default router;
