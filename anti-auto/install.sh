#!/bin/bash
if ! [ $(id -u) = 0 ]; then
   echo "Chưa Cấp Quyền Root !"
   exit 1
fi
if [ ! -f /vddos/vddos ]; then
	echo "Chưa Cài Đặt Anti"
fi
yum install net-tools
yum install screen
cd /root/
wget https://raw.githubusercontent.com/235nvnybtq235/script/main/anti-auto/bot.php
wget https://raw.githubusercontent.com/235nvnybtq235/script/main/anti-auto/bot.sh
wget https://raw.githubusercontent.com/235nvnybtq235/script/main/anti-auto/bot2.php
wget https://raw.githubusercontent.com/235nvnybtq235/script/main/anti-auto/under.sh
clear

