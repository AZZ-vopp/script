cd /www/server/panel/data/
sed -i "s|"endtime": -1.*|"endtime": 999999999999|" ./plugin.json
cd /www/server/panel/class/
sed -i "s|softList['list'] = tmpList.*|softList['list'] = tmpList
        softList['pro'] = 1
for soft in softList['list']:
    soft['endtime'] = 0|" ./panelplugin.py
cd /root
reboot
