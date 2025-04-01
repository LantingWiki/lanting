import request from 'supertest';
import express from 'express';
import cors from 'cors';
import apiRoutes from '../routes';
import * as tributeService from '../services/tribute.service';

// 模拟 archiveWebpage 功能以避免在测试中实际调用 single-file-cli
jest.mock('../services/tribute.service', () => {
  const originalModule = jest.requireActual('../services/tribute.service');
  return {
    ...originalModule,
    saveTribute: jest.fn(async (tribute) => {
      // 模拟设置 archivePath
      tribute.archivePath = `${tribute.date || '2025-03-25'}-${tribute.title || 'unknown'}.html`;
      return Promise.resolve();
    }),
    getTributeInfo: jest.fn(async () => ({
      title: '测试文章',
      author: '测试作者',
      publisher: '测试出版社',
      date: '2025-03-25'
    })),
    getAllTributes: jest.fn(async () => ([
      {
        link: 'https://example.com',
        title: '测试文章1',
        author: '作者1',
        publisher: '出版社1',
        date: '2025-03-25',
        chapter: '本纪',
        tag: '测试',
        remarks: '备注1',
        archivePath: '2025-03-25-测试文章1.html'
      }
    ]))
  };
});

// Create a test app
const app = express();
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use('/api', apiRoutes);

describe('Tribute API Endpoints', () => {
  describe('POST /api/archive/tribute/save', () => {
    it('should save tribute data successfully', async () => {
      const tributeData = {
        link: 'baidu.com',
        title: '11',
        author: '11',
        publisher: '11',
        date: '11',
        chapter: '世家',
        tag: '1',
        remarks: '1'
      };

      const response = await request(app)
        .post('/api/archive/tribute/save')
        .send(tributeData)
        .expect('Content-Type', /json/)
        .expect(200);

      expect(response.body).toHaveProperty('status', 'success');
      expect(response.body.data).toHaveProperty('archivePath');
    });

    it('should return error when required fields are missing', async () => {
      const tributeData = {
        link: '',  // Missing link
        title: '',  // Missing title
        author: '11',
        publisher: '11',
        date: '11',
        chapter: '世家',
        tag: '1',
        remarks: '1'
      };

      const response = await request(app)
        .post('/api/archive/tribute/save')
        .send(tributeData)
        .expect('Content-Type', /json/)
        .expect(400);

      expect(response.body).toHaveProperty('status', 'fail');
      expect(response.body).toHaveProperty('code', 'MISSING_REQUIRED_FIELDS');
    });
  });

  describe('POST /api/archive/tribute/info', () => {
    it('should return tribute info', async () => {
      const response = await request(app)
        .post('/api/archive/tribute/info')
        .send('baidu.com')
        .expect('Content-Type', /json/)
        .expect(200);

      expect(response.body).toHaveProperty('status', 'success');
      expect(response.body).toHaveProperty('data');
      expect(response.body.data).toHaveProperty('title');
      expect(response.body.data).toHaveProperty('author');
      expect(response.body.data).toHaveProperty('publisher');
      expect(response.body.data).toHaveProperty('date');
    });
  });

  describe('GET /api/archive/tribute/all', () => {
    it('should return all tributes', async () => {
      const response = await request(app)
        .get('/api/archive/tribute/all')
        .expect('Content-Type', /json/)
        .expect(200);

      expect(response.body).toHaveProperty('status', 'success');
      expect(response.body).toHaveProperty('data');
      expect(Array.isArray(response.body.data)).toBe(true);
    });
  });
});
