import express from 'express';
import archiveRoutes from './archive.routes';
import tributeRoutes from './tribute.routes';

const router = express.Router();

// Health check route
router.get('/health', (req, res) => {
  res.status(200).json({ status: 'ok', message: 'API is running' });
});

// Register route modules
router.use('/archives', archiveRoutes);
router.use('/archive/tribute', tributeRoutes);
router.use('/tribute', tributeRoutes);

export default router;
