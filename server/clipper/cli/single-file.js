/* eslint-disable global-require */
/*
 * Copyright 2010-2020 Gildas Lormeau
 * contact : gildas.lormeau <at> gmail.com
 *
 * This file is part of SingleFile.
 *
 *   The code in this file is free software: you can redistribute it and/or
 *   modify it under the terms of the GNU Affero General Public License
 *   (GNU AGPL) as published by the Free Software Foundation, either version 3
 *   of the License, or (at your option) any later version.
 *
 *   The code in this file is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero
 *   General Public License for more details.
 *
 *   As additional permission under GNU AGPL version 3 section 7, you may
 *   distribute UNMODIFIED VERSIONS OF THIS file without the copy of the GNU
 *   AGPL normally required by section 4, provided you include this license
 *   notice and a URL through which recipients can access the Corresponding
 *   Source.
 */

const fileUrl = require("file-url");
const fs = require("fs");

run(require("./args"))
// eslint-disable-next-line no-console
.catch(error => console.error(error.message || error));

async function run(options) {
	const currentArticles = fs.readdirSync("/Users/wang.boyang/Projects/mine/lanting/archives/comments");
	/**
	 * XXX boyang: custom option
	 */
	const getCurrentId = () => {
		let files = currentArticles.slice().map(f => +(f.split("-")[0]));
		files = files.sort((a,b)=>b-a);
		return files[0];
	};
	options.backEnd = "webdriver-chromium";
	options.lantingId = getCurrentId() + 1;
	/**
	 * Steps:
	 * 1. specify current ID. ID passed as option
	 * 2. save orig with names ID+1, ID+2 etc. Each task is given an ID
	 * 3. create templates with ID-title1, ID-title2 etc
	 */
	
	const singlefile = await require("./single-file-cli-api")(options);
	let urls;

	if (options.url && !singlefile.VALID_URL_TEST.test(options.url)) {
		options.url = fileUrl(options.url);
	}
	if (options.urlsFile) {
		urls = fs.readFileSync(options.urlsFile).toString().split("\n");
	} else {
		urls = [options.url];
	}
	options.retrieveLinks = true;
	options.browserScripts = options.browserScripts.map(path => require.resolve(path));

	await singlefile.capture(urls);
	await singlefile.finish();
}