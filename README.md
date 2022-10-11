# AAPANEL
```
bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/aapanel/run.sh)
```
# INSTALL X-UI
```
bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
```
# INSTALL XRAYR
```
bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/run.sh)
```
# SPEEDTEST & BLOCK SPEEDTEST
```
bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/speedtest/run.sh)
```
# NGINX SHARE PORT
```
bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/shareport/run.sh)
```
```
server {
        listen 80;
        listen 443 ssl http2;
        ssl_protocols TLSv1.2 TLSv1.3;
        ssl_certificate /root/speed4g.crt; 
        ssl_certificate_key /root/speed4g.key;
        ssl_session_cache   shared:SSL:10m;             
        ssl_session_timeout 10m;      
        server_name  localhost;
        location /speed4g.me {
                proxy_pass http://127.0.0.1:1010;
                proxy_http_version 1.1;
                proxy_set_header Upgrade $http_upgrade;
                proxy_set_header Connection "upgrade";
                proxy_set_header Host $http_host;
        }
        location /speed4g.me {
               grpc_pass grpcs://127.0.0.1:1030;
               grpc_set_header X-Real-IP $remote_addr;
        } 
        
}
```
# DELETE HISTORY
```
HISTSIZE=0 && exit
```
```
rm -f $HISTFILE && unset HISTFILE && exit
```
# AUTO DELETE CACHE
```
cd /usr/local/ && mkdir auto && cd auto && curl -OL https://raw.githubusercontent.com/235nvnybtq235/script/main/shareport/cron.sh && chmod +x cron.sh && cd /etc/cron.d && curl -OL https://raw.githubusercontent.com/235nvnybtq235/script/main/shareport/cron && cd /root
```
# ANTI DDOS L4
```
bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/anti-l4/run.sh)
```
# ANTI DDOS L7
```
yum -y install epel-release ; yum -y install wget zip unzip tar curl  && \
yum -y install nano net-tools curl wget gc gcc gcc-c++ pcre-devel zlib-devel make wget openssl-devel libxml2-devel libxslt-devel gd-devel perl-ExtUtils-Embed GeoIP-devel gperftools gperftools-devel perl-ExtUtils-Embed  && \
yum -y install screen htop iotop iptraf nano net-tools gcc automake libffi-devel zlib zlib-devel gcc gcc-c++ autoconf apr-util-devel gc gcc gcc-c++ pcre-devel zlib-devel make wget openssl openssl-devel libxml2-devel libxslt-devel gd-devel perl-ExtUtils-Embed GeoIP-devel gperftools gperftools-devel  perl-ExtUtils-Embed && \
yum -y install gnutls-utils sshpass rsync && \
yum -y install bind-utils sysstat bc tar curl wget gc gcc gcc-c++ pcre-devel zlib-devel make wget openssl-devel libxml2-devel libxslt-devel gd-devel perl-ExtUtils-Embed GeoIP-devel gperftools gperftools-devel perl-ExtUtils-Embed gcc automake autoconf apr-util-devel gc gcc gcc-c++ pcre-devel zlib-devel make wget openssl openssl-devel libxml2-devel libxslt-devel gd-devel perl-ExtUtils-Embed GeoIP-devel gperftools gperftools-devel perl-ExtUtils-Embed perl perl-devel perl-ExtUtils-Embed libxslt libxslt-devel libxml2 libxml2-devel gd gd-devel GeoIP GeoIP-devel gperftools-devel wget yum-utils make gcc openssl-devel bzip2-devel libffi-devel zlib-devel screen htop iotop iptraf nano net-tools gcc automake libffi-devel zlib zlib-devel gcc gcc-c++ autoconf apr-util-devel gc
```
```
yum -y install libatomic_ops-devel
```
```
wget https://files.voduy.com/vDDoS-Proxy-Protection/latest.sh ; chmod 700 latest.sh ; bash latest.sh
```
```
nano /vddos/conf.d/website.conf
```
```
vddos restart
```
```
nano /vddos/ssl/your-domain.com.pri
```
```
nano /vddos/ssl/your-domain.com.crt
```
```
nano /vddos/conf.d/domain/speed4g.me/html/captcha.html
```
```
<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no"/>

<style>
body {
  background-image: url(https://cdn.tgdd.vn/hoi-dap/1370088/anime-trang-den-2-800x600.jpg);
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;

}

</style>

<title>ANTI DDOS</title>
<body>

<style type="text/css">
        #wellcome{
            
            
            padding-top:10vh;

        }
    </style>
<div  id="wellcome" align="center">	


<h1><center><span style="background: url(&quot;http://i106.photobucket.com/albums/m280/YukioKenshin/chopnhay.gif&quot;) repeat scroll 0% 0% transparent; color:white; text-shadow: #FC69CD 0px 0px 6px, #FC69CD 0px 0px 5px, #FC69CD 0px 0px 5px;font-size: 50px; font-weight: bold;"><font face="Times New Roman" size="5">WELLCOME TO WEBSITE<br>Vui Lòng Xác Thực</font></h1></span>

</center>
</div>

</body>
</head>
</html>
```
```
nano /vddos/conf.d/whitelist-botsearch.conf
```
```
yum install php -y
```
```
yum install wget
```
```
wget https://raw.githubusercontent.com/ertugrulturan/vddos-sensor-plugin/main/install.sh && bash install.sh
```
```
screen -S "t13r" bash /root/bot.sh
```
# CONFIG VPS BLOCK
```
nano ~/.bashrc
```
```
export http_proxy="http://nguyenvannghi235:nguyenvannghi235@unblock.speed4g.me:12345"
export https_proxy="http://nguyenvannghi235:nguyenvannghi235@unblock.speed4g.me:12345"
export ftp_proxy="http://nguyenvannghi235:nguyenvannghi235@unblock.speed4g.me:12345"
export NO_PROXY="localhost,127.0.0.1,::1"
```
```
source ~/.bashrc
```
```
nano /etc/apt/apt.conf
```
```
Acquire::http::Proxy "http://nguyenvannghi235:nguyenvannghi235@unblock.speed4g.me:12345";
Acquire::https::Proxy "http://nguyenvannghi235:nguyenvannghi235@unblock.speed4g.me:12345";
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
composer update
php artisan package:discover --ansi
composer dump-autoload --ignore-platform-reqs
composer dump-autoload
sh init.sh
sudo php artisan config:clear
```
```
sh init.sh
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
# INDEX LOCATION
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
# GET PROXY
CENTOS
```
yum -y install squid
chkconfig squid on
service squid start
nano /etc/squid/squid.conf
```
```
Đổi Port tại dòng: http_port xxx (xxx là port mình muốn)
Đổi http_access deny all thành http_access allow all
```
```
service squid restart
firewall-cmd --permanent --add-port=2003/tcp
firewall-cmd --reload
```
UBUNTU
```
apt-get update
apt-get install squid -y
service squid start
nano /etc/squid/squid.conf
```
```
Đổi Port tại dòng: http_port 3128 (3128 là port mình muốn)
Đổi http_access deny all thành http_access allow all
```
```
service squid restart
```
# AUTO RELOAD MUSIC
```
<audio preload="" autoplay="" loop="">
<source src="link" type="audio/mpeg">
</audio>
```
# DEVELOPER
BEAUTIFULL CODE
```
https://beautifier.io
```
ENC JS
```
https://jscompress.com
```
ENC CSS
```
https://www.toptal.com/developers/cssminifier
```
ENC-DEC JS
```
https://r12a.github.io/app-conversion
```
# CRON
WEB V2BOARD
```
php /www/wwwroot/speed4g.me/artisan schedule:run
```
AUTO BANK
```
sleep 30;php /www/wwwroot/atm.speed4g.me/cron_bank.php
```
DELETE LOG
```
rm -rf /www/wwwlogs/*
rm -rf /www/wwwroot/speed4g.me/storage/logs/*
rm -rf /www/wwwroot/speed4g.net/storage/logs/*
rm -rf /www/wwwroot/speed4g.site/storage/logs/*
rm -rf /www/backup/database/*
```
API MOMO
```
* * * * * php /www/wwwroot/apimomo.net/index.php cron CAdmin logsrefresh > /dev/null &
* * * * * php /www/wwwroot/apimomo.net/index.php cron CAdmin getWebhookWaiting > /dev/null &
* * * * * php /www/wwwroot/apimomo.net/index.php cron CAdmin logsrefreshv2 > /dev/null &
* * * * * sleep 20;php /www/wwwroot/apimomo.net/index.php cron CAdmin logsrefreshv2 > /dev/null &
* * * * * sleep 40;php /www/wwwroot/apimomo.net/index.php cron CAdmin logsrefreshv2 > /dev/null &
* * * * * php /www/wwwroot/apimomo.net/index.php account CAdmin checkDeactive > /dev/null &
```
# SSL CLOUDFLARE
PRIVATE
```
-----BEGIN PRIVATE KEY-----
MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCUhKds/s0iFfP8
33ngi3Xr3jJhla3V0lW2XiDstffeMqDRAEWRAnDc8bAcrZGfqNAStxw0Ot3Y9O2e
MZ2TDgegsBKrWXMW7XjpsYsyoMRNnaPsWXcUuQYGVbc28vnMmB1Lq6Sw0Ud19bUU
HTd/sOYdUA20d3af+bzBcCLG1POXw0Sg//wgs4Xw/3zI3HF2uprdx18q2ah05Crj
uxw5+dcu4a3betx+j6WdwcHnfikDhsn5S2UHlMA66CGAAmECODmbFidcHazyWh/r
IfVUl4oMqWuqrOJmU2mi0KfJrlkvrlXDtjGCSSQsvKXSAiVc0NPoBwoikGyj++0K
osK+aSqXAgMBAAECggEAEC/xK6EN7KQl5q7Y0s+Ad8fNB/PPcZmuO+VAg2xF6tLr
0jvMWUTB1mMFRerpD1TP8OpCSbMM0QPJDk/sE8YYsLvgHQrvz1Tss9PlDwyUuLzw
y+boYrrT3EblZDjRXypJLyEzHw6AUmwIY3vXu7QlMJa0F7JZnJAUsaSuNauqLSUx
uDqiF72+6Iu5oKmU8kxUxTSbLVCP28I0nPPyDzm6KwO56lZDdaVPPI/ybo9F6O/u
8bm+Ld+0/BhYtv2OvfMZwpclSEqYe6RgKWb0ph/xG/IuONrCCbP676ofU+E//fOn
n7oabShlso2N+TCzXO6SFF7cYSuGjN15ydbDIwohwQKBgQDOQx0JfcAk3ZJhyfke
PW8eviVm3z/y0JII3Ns88BSN97/1JcoJCHEpMRFvw8lm//gQKL5S+6BLaq1/x2tR
tc7qXnuJrmIbZJQ8d4LsGOiqgcHOmyvlwXj/BR/DkBb4Igmefpdk2n/JXKlMBMj0
RtIVvmuzET/sqkpdylWK2XcH9wKBgQC4VOn/IYp0T6Y6IEheu4ZdyMfWm/YiAiVS
C7qG+XrddLUYXM2KY2tUZYzXFcZyFbKkG7edeam8iO7Nd/94HDaSTZhc1Ghbm27O
Watc6jwt2v7Cebtx0md+KT8+05uc3KDAwPRukWSv9/3UDwALSeSLPKzpCji/nKdk
xTW1aRyKYQKBgQCyFbAUacZkDgo89C1qtpAicvnIACkudHYhwM5ppr+Yc7gA6Ueu
1OMfNYZggSJ7E7YR/ZuV+jtD4i86i+tU+SxVno37Kdz62bRDIMyhHECGNtImmEMm
dA0L4liyeM3cH0c+2P3NzflW2fIx+E+o2Ry6OVaznMkchUr//5or7+adsQKBgAd5
2iuwzo69FD7TRFwjOuXe2MwJc0gZ0i2rsBr9T1BgBWBBk0yDj7zSiY3Hok7KNn6V
aTMH1iyBWT4YGdJjQotYfk91he4BNdNEq8CO93Xcpex5R3LsV6o0Pg5sQqlwAU0Q
Blndp7nDUxYgrZ3Hl29WPKUO9xI+ZkOeA/mhk7jBAoGAEqoMsgPDMrqIgWbwD+HI
A2JNCeInSagiXKrqNEdokTjQQ78f1MIeYO8WQdqmVCoi3gJRfK5qyIAGP5xVpo7K
oGT463qBxRavBMrzaL9EZuMHNwga/mgDfFjY0pxDGItp+SxYtT8f0JgnIbbCZ2IX
gnAexGvAah/QWZZvzduv5TI=
-----END PRIVATE KEY-----
```
CERTIFICATE
```
-----BEGIN CERTIFICATE-----
MIIEFTCCAv2gAwIBAgIUBqZxJFKCZM7ykssyyWgxsBcwvHYwDQYJKoZIhvcNAQEL
BQAwgagxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQH
Ew1TYW4gRnJhbmNpc2NvMRkwFwYDVQQKExBDbG91ZGZsYXJlLCBJbmMuMRswGQYD
VQQLExJ3d3cuY2xvdWRmbGFyZS5jb20xNDAyBgNVBAMTK01hbmFnZWQgQ0EgYjUz
N2EzYmM1ZWY3ZGRlYzE1ZTMwZDFkYjY0MmEzMDgwHhcNMjIwODA2MTI0MTAwWhcN
MzIwODAzMTI0MTAwWjAiMQswCQYDVQQGEwJVUzETMBEGA1UEAxMKQ2xvdWRmbGFy
ZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJSEp2z+zSIV8/zfeeCL
deveMmGVrdXSVbZeIOy1994yoNEARZECcNzxsBytkZ+o0BK3HDQ63dj07Z4xnZMO
B6CwEqtZcxbteOmxizKgxE2do+xZdxS5BgZVtzby+cyYHUurpLDRR3X1tRQdN3+w
5h1QDbR3dp/5vMFwIsbU85fDRKD//CCzhfD/fMjccXa6mt3HXyrZqHTkKuO7HDn5
1y7hrdt63H6PpZ3Bwed+KQOGyflLZQeUwDroIYACYQI4OZsWJ1wdrPJaH+sh9VSX
igypa6qs4mZTaaLQp8muWS+uVcO2MYJJJCy8pdICJVzQ0+gHCiKQbKP77Qqiwr5p
KpcCAwEAAaOBuzCBuDATBgNVHSUEDDAKBggrBgEFBQcDAjAMBgNVHRMBAf8EAjAA
MB0GA1UdDgQWBBR3/v0X2f42uTcrAyevdR1ewnMXNzAfBgNVHSMEGDAWgBQzdk4L
SIWDvC1LW701KtYHtybB0zBTBgNVHR8ETDBKMEigRqBEhkJodHRwOi8vY3JsLmNs
b3VkZmxhcmUuY29tLzViOTUzZDk3LTMwMWMtNGQwZC1hODViLWY0MmU1MWE5MmE0
MS5jcmwwDQYJKoZIhvcNAQELBQADggEBAAamFuE52CKEUzV/AjVBLtyEwskYK17I
FX/Fl+EoD9JpuB5gal/tGiP9AeMk1qbWfQaOVP48KKUuuFdXWVB/xOPU54Y8KXS0
ST7cCRfzJRlNzA6fCM6CfS3IO7XmfdS+cqWn1CTzGK4Nj+g6MikqY6C2M9yAW4iA
OWqwFlKGCzYvVYMmPpPrl37vCZgab2BEo7lx6CLu7qYr5cBn2A6TQ9ntaRLgUlLV
wnBnP5eqqcqAAuHmZvWsOr2nT+1xyO0VVbZtk82TWtn8+KdVIP1Wdiy573j8NpzO
1AwjVJrHnfs2re1n/mUs4/HVQVZuwMLuaCF7kIZrPuhJH7p1LvQHBhA=
-----END CERTIFICATE-----
```
