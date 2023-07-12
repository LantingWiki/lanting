import type { VercelRequest, VercelResponse } from '@vercel/node';
import { kv } from "@vercel/kv";
import { allowCors } from "../utils/echo";

export default allowCors(async function handler(
  request: VercelRequest,
  response: VercelResponse,
) {
  await kv.hincrby("search-keyword", request.body, 1);
  const keywords = await kv.hgetall("search-keyword");
  response.status(200).json({
    body: request.body,
    query: request.query,
    cookies: request.cookies,
    headers: request.headers,
    keywords,
  });
});
