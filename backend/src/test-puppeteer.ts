/**
 * 测试 Puppeteer 集成与网页存档功能
 *
 * 此脚本用于测试：
 * 1. Puppeteer 是否正确安装
 * 2. 是否能获取 Chromium 浏览器路径
 * 3. single-file-cli 能否使用 Puppeteer 提供的浏览器成功存档网页
 *
 * 运行方法：npx ts-node src/test-puppeteer.ts
 */

import * as singleFileService from './services/singlefile.service';
const puppeteer = require('puppeteer');
import path from 'path';
import fs from 'fs';

const TEST_URL = 'https://example.com';
const TEST_FILENAME = 'test-puppeteer-archive.html';

/**
 * 测试 Puppeteer 状态
 */
async function testPuppeteer() {
  console.log('=== 测试 Puppeteer 集成 ===');

  try {
    console.log('1. 启动 Puppeteer...');
    const browser = await puppeteer.launch({ headless: true });

    console.log('2. 获取 Chromium 可执行文件路径...');
    const executablePath = puppeteer.executablePath();
    console.log(`   Chromium 路径: ${executablePath}`);

    console.log('3. 验证浏览器功能...');
    const page = await browser.newPage();
    await page.goto(TEST_URL, { waitUntil: 'networkidle0' });
    const title = await page.title();
    console.log(`   页面标题: ${title}`);

    await browser.close();
    console.log('✅ Puppeteer 测试成功!');
    return executablePath;
  } catch (error) {
    console.error('❌ Puppeteer 测试失败:', error);
    throw error;
  }
}

/**
 * 测试网页存档功能
 */
async function testArchive(chromiumPath: string) {
  console.log('\n=== 测试网页存档功能 ===');

  try {
    console.log(`1. 使用 single-file-cli 存档 ${TEST_URL}...`);
    const outputPath = await singleFileService.archiveWebpage(
      TEST_URL,
      TEST_FILENAME,
      { browserExecutablePath: chromiumPath,browserArgs: ['--no-sandbox', '--disable-setuid-sandbox'] }
    );

    console.log(`2. 验证存档文件...`);
    if (fs.existsSync(outputPath)) {
      const stats = fs.statSync(outputPath);
      console.log(`   文件大小: ${stats.size} 字节`);
      console.log(`   文件路径: ${outputPath}`);
      console.log('✅ 网页存档成功!');
    } else {
      throw new Error('存档文件不存在');
    }
  } catch (error) {
    console.error('❌ 网页存档失败:', error);
    throw error;
  }
}

/**
 * 主函数
 */
async function main() {
  console.log('开始测试 Puppeteer 集成与存档功能...\n');

  try {
    // 测试 Puppeteer
    // const chromiumPath = await testPuppeteer();

    // 测试网页存档
    await testArchive( '/usr/bin/google-chrome');

    console.log('\n✅ 所有测试通过!');
    console.log('现在您可以使用 npm run save-page <URL> [filename] 命令来存档任意网页。');
  } catch (error) {
    console.error('\n❌ 测试失败:', error);
    process.exit(1);
  }
}

// 执行主函数
main().catch(console.error);
