#!/bin/bash



install() {
    bash <(curl -Ls https://raw.githubusercontent.com/XrayR-project/XrayR-release/master/install.sh) && clear && echo -e "   Install XrayR Success !"
    
}



config() {
    echo -e "   Config Does Not Exist !"
    
}

uninstall() {
    clear
echo "   1. Yes"
echo "   2. No"
read -p "  Vui Lòng Nhập : " num

    case "${num}" in
        1) systemctl stop XrayR && systemctl disable XrayR && rm /etc/systemd/system/XrayR.service -f && systemctl daemon-reload && systemctl reset-failed && rm -rf /etc/XrayR && rm -rf /usr/local/XrayR && rm -rf /usr/bin/XrayR && rm -rf /usr/bin/xrayr && clear && echo -e "   Uninstall XrayR Success !"
        ;;
        2) xrayr
        ;;
        
        *) xrayr uninstall
        ;;
    esac
}



stop() {
    systemctl stop XrayR
    
    sleep 2
    check_status
    if [[ $? == 1 ]]; then
      clear &&  echo -e "   Stop XrayR Success !"
    else
      clear &&  echo -e "   Stop XrayR Success Failed !"
    fi

    if [[ $# == 0 ]]; then
        before_show_menu
    fi
}

restart() {
    systemctl restart XrayR
    
    sleep 2
    check_status
    if [[ $? == 0 ]]; then
        clear &&  echo -e "   Restart XrayR Success !"
    else
        clear &&  echo -e "   Restart XrayR Failed !"
    fi
    if [[ $# == 0 ]]; then
        before_show_menu
    fi
}

status() {
    clear
    echo -e "   VERSION MOD BY ADMIN SPEED4G.ME"
}




show_log() {
    journalctl -u XrayR.service -e --no-pager -f
    
}





# 0: running, 1: not running, 2: not installed
check_status() {
    if [[ ! -f /etc/systemd/system/XrayR.service ]]; then
        return 2
    fi
    temp=$(systemctl status XrayR | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
    if [[ x"${temp}" == x"running" ]]; then
        return 0
    else
        return 1
    fi
}



check_uninstall() {
    check_status
    if [[ $? != 2 ]]; then
        echo ""
        clear && echo -e "   XrayR Not Install !"
        if [[ $# == 0 ]]; then
            before_show_menu
        fi
        return 1
    else
        return 0
    fi
}

check_install() {
    check_status
    if [[ $? == 2 ]]; then
        
        clear && echo -e "   XrayR Not Install !"
        if [[ $# == 0 ]]; then
            before_show_menu
        fi
        return 1
    else
        return 0
    fi
}







show_menu() {
    clear
    echo -e "   VERSION MOD BY ADMIN SPEED4G.ME"
  
}


if [[ $# > 0 ]]; then
    case $1 in
        
        "stop") check_install 0 && stop 0
        ;;
        "restart") check_install 0 && restart 0
        ;;
        "status") check_install 0 && status 0
        ;;
        
        "log") check_install 0 && show_log 0
        ;;
        
        "config") config $*
        ;;
        "install") check_uninstall 0 && install 0
        ;;
        "uninstall") check_install 0 && uninstall 0
        ;;
        
        *) show_menu
    esac
else
    show_menu
fi
