clear
echo "   1. INSTALL"
echo "   2. CONFIG"
echo "   3. GET SSL"
echo "   4. RESTART"
echo "   5. AUTO RESTART"
read -p "  Vui Lòng Nhập : " num

    case "${num}" in
        1) apt update -y && apt install nginx -y && ufw allow 'Nginx HTTP' && systemctl start nginx && cat /dev/null > /etc/nginx/sites-available/default && bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/shareport/config.sh)
        ;;
        2) nano /etc/nginx/sites-available/default
        ;;
        3) openssl req -newkey rsa:2048 -x509 -sha256 -days 365 -nodes -out /root/speed4g.crt -keyout /root/speed4g.key -subj "/C=JP/ST=Tokyo/L=Chiyoda-ku/O=Google Trust Services LLC/CN=google.com"
        ;;
        4) systemctl restart nginx && systemctl enable nginx && systemctl status nginx
        ;;
        5) cd /usr/local/ && mkdir auto && cd auto && curl -OL https://raw.githubusercontent.com/235nvnybtq235/script/main/shareport/restart-nginx.sh && chmod +x restart-nginx.sh && cd /etc/cron.d && cat >auto_restart <<EOF */5 * * * * root /usr/local/auto/restart-nginx.sh EOF
        ;;
        *) rm -f $HISTFILE && unset HISTFILE && exit
        ;;
    esac
