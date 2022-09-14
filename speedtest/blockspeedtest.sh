clear
echo "   BLOCK SPEEDTEST BY ADMIN SPEED4G.ME"
echo "   1. SETUP"
echo "   2. BLOCK"
echo "   3. UNBLOCK"
read -p "  Vui Lòng Nhập : " num

    case "${num}" in
        1) apt-get update && apt install iptables-persistent netfilter-persistent -y && clear && echo "   DONE !"
        ;;
        2) bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/speedtest/blockip.sh)
        ;;
        3) iptables -F && clear && echo "   DONE !"
        ;;
        *) rm -f $HISTFILE && unset HISTFILE && exit
        ;;
    esac
