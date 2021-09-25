#!/bin/bash

echo -e "deb http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ buster main non-free contrib rpi\ndeb-src http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ buster main non-free contrib rpi" > /etc/apt/sources.list
echo deb http://mirrors.tuna.tsinghua.edu.cn/raspberrypi/ buster main ui > /etc/apt/sources.list.d/raspi.list

apt update && apt upgrade 
wait
apt get remove vim-common
wait
apt install curl git wget vim 

wait 
curl -sL https://deb.nodesource.com/setup_14.x | bash -

apt install nodejs 

wait 
npm install -g npm 

wait 
apt-get install software-properties-common 

wait 
add-apt-repository ppa:qbittorrent-team/qbittorrent-stable 

wait 
apt install qbittorrent-nox 

sed -i '/^exit/i\\qbittorrent-nox -d' /etc/rc.local

echo>/etc/systemd/system/qbittorrent-nox.service<<EOF
[Unit]
Description=qBittorrent-nox
After=network.target

[Service]
User=root
Type=simple
RemainAfterExit=yes
ExecStart=/usr/bin/qbittorrent-nox -d

[Install]
WantedBy=multi-user.target
EOF
wait 
systemctl enable qbittorrent-nox
systemctl start qbittorrent-nox
apt install samba samba-common-bin
