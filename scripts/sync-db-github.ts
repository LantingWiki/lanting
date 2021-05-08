/**
 * 
 * 
 * What do we do here?
 * Before we do about anything - before there are any changes. Let's make sure we are in sync
 * Syncing is hard
 * Let's do one small step first: dump mysql data into archives.json
 * 
 * We don't need that many forms. We need comments on github. We need mysql tables. We don't need archives.json as it can be a constructed data from backend (ideally, probably not now. Or cached)
 * 
 * Indeed, archives.json should come not from github data, but mysql tables (point of truth). It's not a problem if we still persist it and upload to OSS
 * 
 * The source and direction of syncing matters
 * 
 * MySQL to archives.json
 */



