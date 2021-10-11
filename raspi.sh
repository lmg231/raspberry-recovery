#!/bin/bash
echo -e "deb http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ buster main non-free contrib rpi\\ndeb-src http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ buster main non-free contrib rpi" > /etc/apt/sources.list
echo "deb http://mirrors.tuna.tsinghua.edu.cn/raspberrypi/ buster main ui" > /etc/apt/sources.list.d/raspi.list
curl -sL https://deb.nodesource.com/setup_14.x | bash -
raspi-config
wait
echo "" > /etc/motd
echo "" > /etc/update-motd.d/10-uname
wait
apt remove vim-common nano
wait
apt install curl wget vim qbittorrent-nox samba samba-common-bin
