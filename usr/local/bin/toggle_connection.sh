#!/usr/bin/env bash
## { alterEGO Linux: "Open the vault of knowledge" } ----------------------- ##
##                                                                           ##
## /usr/local/share/bin/toggle_connection.sh                                 ##
##   created     : 2021-06-28 11:42:57 UTC                                   ##
##   updated     : 2022-03-29 03:39:48 UTC                                   ##
##   description : Open and close internet connection.                       ##
## _________________________________________________________________________ ##

if [[ "$(nmcli networking)" = "enabled" ]]; then
    nmcli networking off                                                      \
    && notify-send "YOU just broke the Internet..."
    sleep 1.5
    killall notify-osd
else
    nmcli networking on                                                       \
    && notify-send "Connected to Internet..."
    sleep 1.5
    killall notify-osd
fi

## FIN _____________________________________________________________ ¯\_(ツ)_/¯
