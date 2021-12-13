#!/bin/sh

# credits
# https://linuxconfig.org/polybar-a-better-wm-panel-for-your-linux-system

IP=$(dig +short myip.opendns.com @resolver1.opendns.com)

connection_list=$(nmcli -t -f name connection show --order name --active 2>/dev/null | grep "nordvpn")


if pgrep -x openvpn > /dev/null; then
    printf "VPN: $IP - "
    #printf " - "
    echo $connection_list | awk -F'-' '{print $2}'
    
else
    echo Local-IP: $IP
    #echo "# $(curl -4 -sf ifconfig.co)"
    #ip_address=$(curl --silent https://ipaddr.pub)
    #echo $ip_address
fi
