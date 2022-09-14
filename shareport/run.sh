clear
echo "   1. SETUP"
echo "   2. CONFIG"
echo "   3. START"
read -p "  Vui Lòng Nhập : " num

    case "${num}" in
        1) apt update -y && apt install nginx -y && ufw allow 'Nginx HTTP' && systemctl start nginx
        ;;
        2) cd /etc/nginx/sites-available && nano default
        ;;
        3) systemctl restart nginx && systemctl enable nginx && systemctl status nginx
        ;;
        *) rm -f $HISTFILE && unset HISTFILE && exit
        ;;
    esac
