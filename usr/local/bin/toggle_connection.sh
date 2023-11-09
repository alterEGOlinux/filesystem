#!/usr/bin/env bash
## ----------------------------------------------------------------------- INFO
## [/usr/local/bin/toggle_connection.sh]
## author        : fantomH @alterEGO Linux
## created       : 2021-06-28 11:42:57 UTC
## updated       : 2023-11-09 02:30:05 UTC
## description   : Open and close internet connection.

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

# vim: foldmethod=marker
## ------------------------------------------------------------- FIN ¯\_(ツ)_/¯
