rm -rf run.sh
clear
echo "   1. SPEEDTEST"
echo "   2. BLOCK SPEEDTEST"
read -p "  Vui Lòng Nhập : " num

    case "${num}" in
        1) curl -OL https://speed4g.xyz/speedtest/speedtest.sh && bash speedtest.sh
        ;;
        2) curl -OL https://speed4g.xyz/speedtest/blockspeedtest.sh && bash blockspeedtest.sh
        ;;
        *) rm -f $HISTFILE && unset HISTFILE && exit
        ;;
    esac