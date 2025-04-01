import express, { Request, Response } from 'express';
import cors from 'cors';
import dotenv from 'dotenv';
import mongoose from 'mongoose';
import path from 'path';

// Routes
import apiRoutes from './routes';
// 引入配置文件
import config from './config';

// Load environment variables
dotenv.config();

// Initialize Express app
const app = express();
const PORT = config.port;

// Middleware
app.use(cors({
  origin: config.corsOrigin
}));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// 设置静态文件服务 - 使用配置文件中的路径
app.use(config.archives.urlPath, express.static(config.archives.rootDir));
console.log(`Serving static files from: ${config.archives.rootDir}`);
console.log(`Access at: http://localhost:${PORT}${config.archives.urlPath}`);

// Routes
app.use(config.apiPrefix, apiRoutes);

// Root route
app.get('/', (req: Request, res: Response) => {
  res.send('Welcome to Lanting Backend API');
});

// Connect to MongoDB (if needed, uncomment and configure)
/*
mongoose.connect(config.mongoUri)
  .then(() => {
    console.log('Connected to MongoDB');
  })
  .catch((err) => {
    console.error('MongoDB connection error:', err);
  });
*/

// Start server
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
