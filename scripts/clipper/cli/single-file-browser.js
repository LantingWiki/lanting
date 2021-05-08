/* eslint-disable no-undef */
/* eslint-disable vars-on-top */
/* eslint-disable no-var */
/* eslint-disable no-console */
res = { title: document.title };
xPost = document.querySelector('.original_primary_card_tips');

if (xPost) {
  // 转载 x-posting
  m = xPost.innerText.match(/^The following article is from (.*?) Author (.*)$/);
  res.author = m[2].split(' ').join(', ');
  res.publisher = m[1];
} else {
  authorNode = document.querySelector('span.rich_media_meta.rich_media_meta_text');
  if (authorNode) {
    res.author = authorNode.innerText.split(' ').join(', ');
  }

  publisherNode = document.querySelector('#js_name');
  if (publisherNode) {
    res.publisher = publisherNode.innerText;
  }
}

dtNode = document.querySelector('#publish_time');
if (dtNode) {
  dt = dtNode.innerText;
  if (dt === 'Yesterday' || dt === 'Today' || dt.includes('days ago') || dt.includes('week ago')) {
    dt = new Date().toISOString().substring(0, 7);
  } else {
    dt = dt.substring(0, 7);
  }
  res.date = dt;
}
JSON.stringify(res);
