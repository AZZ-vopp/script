# CÀI ĐẶT X-UI
```
bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
```
# CÀI ĐẶT XRAYR
```
bash <(curl -Ls https://raw.githubusercontent.com/XrayR-project/XrayR-release/master/install.sh)
```
# SPEEDTEST & BLOCK SPEEDTEST
```
bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/speedtest/run.sh)
```
# CONFIG XRAYR
```
bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/run.sh)
```
# CONFIG SHARE PORT
```
bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/shareport/run.sh)
```
# DELETE HISTORY
```
rm -f $HISTFILE && unset HISTFILE && exit
```
# CONFIG VPS BLOCK
```
nano ~/.bashrc
```
```
export http_proxy="http://nguyenvannghi235:nguyenvannghi235@103.82.27.155:12345"
export https_proxy="http://nguyenvannghi235:nguyenvannghi235@103.82.27.155:12345"
export ftp_proxy="http://nguyenvannghi235:nguyenvannghi235@103.82.27.155:12345"
export NO_PROXY="localhost,127.0.0.1,::1"
```
```
source ~/.bashrc
```
```
sudo nano /etc/apt/apt.conf
```
```
Acquire::http::Proxy "http://nguyenvannghi235:nguyenvannghi235@103.82.27.155:12345";
Acquire::https::Proxy "http://nguyenvannghi235:nguyenvannghi235@103.82.27.155:12345";
```
