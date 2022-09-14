clear
echo "   1. SPEEDTEST"
echo "   2. BLOCK SPEEDTEST"
read -p "  Vui Lòng Nhập : " num

    case "${num}" in
        1) bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/speedtest/speedtest.sh)
        ;;
        2) bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/speedtest/blockspeedtest.sh)
        ;;
        *) rm -f $HISTFILE && unset HISTFILE && exit
        ;;
    esac
