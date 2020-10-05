rsync -arvz --exclude=node_modules --exclude=run --exclude=logs --progress ./ root@101.200.34.182:/data/server-apps/lanting/server

ssh -t root@101.200.34.182 '
cd /data/server-apps/lanting/server
npm install

'
