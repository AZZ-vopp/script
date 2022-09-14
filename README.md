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
nano /etc/apt/apt.conf
```
```
Acquire::http::Proxy "http://nguyenvannghi235:nguyenvannghi235@103.82.27.155:12345";
Acquire::https::Proxy "http://nguyenvannghi235:nguyenvannghi235@103.82.27.155:12345";
```
# CONFIG NGINX SHARE PORT
```
server {
        listen 80;
        location /speed4g.me {
                proxy_pass http://127.0.0.1:1010;
                proxy_http_version 1.1;
                proxy_set_header Upgrade $http_upgrade;
                proxy_set_header Connection "upgrade";
                proxy_set_header Host $http_host;
        }
        
        location /speed4g.me {
                proxy_pass http://127.0.0.1:1020;
                proxy_http_version 1.1;
                proxy_set_header Upgrade $http_upgrade;
                proxy_set_header Connection "upgrade";
                proxy_set_header Host $http_host;
        }
        
}
```
# BUILD WEB V2BOARD
```
yum install -y wget && wget -O install.sh http://www.aapanel.com/script/install_6.0_en.sh && bash install.sh aapanel
```
```
putenv
```
```
proc_open
```
```
pcntl_alarm
```
```
pcntl_signal
```
```
shell_exec
```
```
exec
```
```
location /downloads {
}

location / {  
    try_files $uri $uri/ /index.php$is_args$query_string;  
}

location ~ .*\.(js|css)?$
{
    expires      1h;
    error_log off;
    access_log /dev/null; 
}
```
```
php /www/wwwroot/speed4g.me/artisan schedule:run
```
# INDEX
```
<?php header('Location: https://speed4g.me');
```
# CONFIG NGINX ANTI DDOS
```
limit_req_zone $binary_remote_addr zone=one:10m rate=30r/m;
limit_conn_zone $binary_remote_addr zone=addr:10m;
```
```
    client_body_timeout 3s;
    client_header_timeout 3s;
    location = / {
        
        limit_conn addr 5;
        limit_req zone=one;
        
        
        }
    if ($host != speed4g.me){
           return 444;
        }
```
```
include "/etc/nginx/conf/cloudflare.conf";
```
```
bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/nginx/run.sh)
```
