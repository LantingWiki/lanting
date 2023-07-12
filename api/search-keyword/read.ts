import type { VercelRequest, VercelResponse } from '@vercel/node';
import { kv } from "@vercel/kv";

export default async function handler(
  request: VercelRequest,
  response: VercelResponse,
) {
  const keywords = await kv.hgetall("search-keyword");
  response.status(200).json({
    keywords,
  });
}
