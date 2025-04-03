在linux服务器克隆该项目（服务器需安装node18）
1. github链接： https://github.com/Maplezeroz/lanting.git
2. 在服务器创建一个文件夹，进入该文件夹的终端：执行git clone https://github.com/Maplezeroz/lanting.git
3. 然后进入lanting文件夹，执行git checkout -b refactor/archives origin/refactor/archives 切换分支
4. 服务器厂家那里开放8000，15123端口
5. 宝塔防火墙那里开放8000，15123端口
修改文件里的ip地址
1. /lanting/config/proxy.ts ip改为自己服务器ip
2. /lanting/src/utils/utils.ts  ip改为自己服务器ip
3. 创建一个.env文件，内容按照.env.example
启动前端项目
1. 终端里执行sudo npm install -g yarn，安装yarn
2. 先在lanting项目目录执行yarn install安装依赖
3. 点击宝塔，网站，node项目，安装node管理器，安装最新版node
4. 新建node项目，选择lanting目录
5. 启动选项使用自启动选项，命令为yarn start
6. 若启动不成功，启动用户从www改为root
启动后端项目
先在终端命令里安装chrome浏览器：
【CentOS】
- wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm 
- sudo dnf install ./google-chrome-stable_current_x86_64.rpm
- sudo dnf install -f
【Ubuntu】
- wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
- sudo dpkg -i google-chrome-stable_current_amd64.deb
- sudo apt-get install -f

1. 在backend目录下，执行yarn install 安装依赖（安装Puppeteer依赖可能会很慢）
2. 点击宝塔，网站，node项目，新建node项目，选择backend目录
3. 启动选项使用自启动选项，命令为yarn dev
4. 若启动不成功，启动用户从www改为root
