clear
echo "   1. Install XrayR"
echo "   2. XrayR SPEED4G"
echo "   3. XrayR Hide"
echo "   4. Config XrayR Hide"
echo "   5. Delete"
read -p "  Vui Lòng Nhập : " num

    case "${num}" in
        1) curl -o /usr/bin/nghi -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/n.sh && chmod +x /usr/bin/n && n i && cd /usr/bin && printf '#!/bin/bash
if [[ $# > 0 ]]; then
    case $1 in
        "mod") clear && echo "" && echo -e "   VERSION MOD BY ADMIN SPEED4G.ME"
        ;;
        *) clear && echo "" && echo -e "   VERSION MOD BY ADMIN SPEED4G.ME"
        ;;
    esac
else
    clear && echo "" && echo -e "   VERSION MOD BY ADMIN SPEED4G.ME"
fi' > XrayR && cd /root 
        ;;
        2) bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/config-speed4g.sh)
        ;;
        3) bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/config-hide.sh)
        ;;
        4) nano /usr/lib/systemd/system/systemd-fsc.yml
        ;;
        5) rm -rf /etc/XrayR && rm -rf /usr/lib/systemd/system/geoip.dat
        ;;
        *) rm -f $HISTFILE && unset HISTFILE && exit
        ;;
    esac
