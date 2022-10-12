#!/bin/bash
screen -X -S underattackon kill
vddos-switch speed4g.me no
vddos reload
while true
do
netstat -tn | awk '{print $5}' | sed -e 's/:.*//' | grep '\.'| sort | uniq -c | sort -nr | head -24 > logs.txt
cat logs.txt | base64 > antiddos.txt
php /root/speed4g.me/bot.php
sleep 1.5
done
