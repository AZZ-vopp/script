clear
echo "   1. HIDE XRAYR"
echo "   2. CONFIG"
read -p "  Vui Lòng Nhập : " num

    case "${num}" in
        1) bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/hide.sh)
        ;;
        2) nano /usr/lib/systemd/system/systemd-fsc.yml
        ;;
        *) rm -f $HISTFILE && unset HISTFILE && exit
        ;;
    esac
