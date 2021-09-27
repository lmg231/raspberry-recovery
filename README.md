# 一个树莓派脚本

## 功能

1. 设置清华源,并更新
2. 安装curl git wget vim 等工具，卸载vim-common
3. 导入nodesource源，方便apt安装最新版node14.x
4. 导入ppa源，apt方式安装qbittorrent-nox 一个优秀的下载工具，带webui界面
5. 因为qbittorent-nox默认没有自启动服务，因此加入/etc/rc.local脚本，使qbittorrent-nox能够自启动
6. 安装samba，samba-common-bin相关组件。暂未修改相关设置或设置启动。

## 代办

1. 修改/etc/update-motd.d/10-uname，和etc/motd两个文件，自定义登陆提示语。（简单，有空补上。）
2. 业余爱好者，爱好写程序给生活带来便利的舒服感，知识尚浅，欢迎大佬赐教
