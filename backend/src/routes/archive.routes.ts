import express from 'express';
import { getArchives, getArchiveById } from '../controllers/archive.controller';

const router = express.Router();

// GET all archives
router.get('/', getArchives);

// GET single archive
router.get('/:id', getArchiveById);

export default router;
