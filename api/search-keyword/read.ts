import type { VercelRequest, VercelResponse } from '@vercel/node';
import { kv } from "@vercel/kv";
import { allowCors } from "../utils/echo";

export default allowCors(async function handler(
  request: VercelRequest,
  response: VercelResponse,
) {
  const keywords = await kv.hgetall("search-keyword");
  response.status(200).json({
    keywords,
  });
});
