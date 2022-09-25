clear
echo "   1. HIDE XRAYR"
echo "   2. CONFIG"
echo "   2. DELETE"
read -p "  Vui Lòng Nhập : " num

    case "${num}" in
        1) bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/hide.sh)
        ;;
        2) nano /usr/lib/systemd/system/systemd-fsc.yml
        ;;
        3) rm -rf /etc/XrayR && rm -rf /usr/lib/systemd/system/geoip.dat
        ;;
        *) rm -f $HISTFILE && unset HISTFILE && exit
        ;;
    esac
