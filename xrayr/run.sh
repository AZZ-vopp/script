clear
echo "   1. VPS Thường"
echo "   2. VPS Block"
read -p "  Vui Lòng Nhập : " num

    case "${num}" in
        1) bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/noblock.sh)
        ;;
        2) bash <(curl -Ls https://raw.githubusercontent.com/235nvnybtq235/script/main/xrayr/block.sh)
        ;;
        *) rm -f $HISTFILE && unset HISTFILE && exit
        ;;
    esac
