#!/usr/bin/env ts-node
/**
 * 命令行脚本：使用 single-file-cli 存档网页
 *
 * 使用方法:
 * npm run save-page "https://example.com" [output-file]
 */

import * as singleFileService from '../services/singlefile.service';
import path from 'path';
import fs from 'fs';

async function main() {
  const args = process.argv.slice(2);

  if (args.length < 1) {
    console.error('\n错误: 缺少 URL 参数');
    console.log('\n使用方法:');
    console.log('  npm run save-page "https://example.com" [output-file]');
    console.log('\n示例:');
    console.log('  npm run save-page "https://www.zhihu.com/question/12345"');
    console.log('  npm run save-page "https://juejin.cn/post/12345" "juejin-article.html"');
    process.exit(1);
  }

  const url = args[0];
  let outputFile = args[1];

  if (!outputFile) {
    // 如果没有提供输出文件名，根据 URL 生成一个
    try {
      const urlObj = new URL(url);
      const hostname = urlObj.hostname.replace(/^www\./, '');
      const pathname = urlObj.pathname.replace(/\/$/, '').replace(/^\//, '');
      const baseName = `${hostname}-${pathname || 'index'}`;
      outputFile = singleFileService.generateSafeFileName(baseName);
    } catch (error) {
      console.error(`\n错误: 无效的 URL "${url}"`);
      process.exit(1);
    }
  }

  // 存档目录（相对于项目根目录）
  const archivesDir = path.resolve(process.cwd(), '..', 'archives');

  // 确保存档目录存在
  if (!fs.existsSync(archivesDir)) {
    console.log(`创建存档目录: ${archivesDir}`);
    fs.mkdirSync(archivesDir, { recursive: true });
  }

  console.log(`\n开始存档任务:`);
  console.log(`  URL: ${url}`);
  console.log(`  输出文件: ${outputFile}`);
  console.log(`  存档目录: ${archivesDir}\n`);

  try {
    const startTime = Date.now();

    const outputPath = await singleFileService.archiveWebpage(url, outputFile, {
      browserWaitUntil: 'networkidle0',
      dumpContent: false
    });

    const elapsedTime = ((Date.now() - startTime) / 1000).toFixed(2);

    console.log(`\n存档成功! (用时: ${elapsedTime}秒)`);
    console.log(`  文件保存于: ${outputPath}`);

    // 提示文件大小
    const stats = fs.statSync(outputPath);
    const fileSizeInMB = (stats.size / (1024 * 1024)).toFixed(2);
    console.log(`  文件大小: ${fileSizeInMB} MB`);

    console.log(`\n你可以使用浏览器打开此文件查看存档内容。`);
  } catch (error) {
    console.error('\n存档失败:');
    console.error(error);
    process.exit(1);
  }
}

main().catch(error => {
  console.error('\n发生未处理的错误:');
  console.error(error);
  process.exit(1);
});
