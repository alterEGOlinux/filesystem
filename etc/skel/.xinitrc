# -----------------------------------------------------------------------------
#              { alterEGO Linux: "Open the vault of knowledge" }
# -----------------------------------------------------------------------------
#
# ~/.xinitrc
#   created        : 2021-02-23 02:54:43 UTC
#   updated        : 2023-03-02 12:35:18 UTC
#   description    : Starts Window Manager with startx.
# _____________________________________________________________________________

#... Executed by startx (run your window manager from here)
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

case ${2} in

    qtile)
        exec /usr/bin/qtile start
        ;;
        
    *)
        exec /usr/bin/i3
        ;;

esac

# -----------------------------------------------------------------------------
# vim: foldmethod=marker
# ____________________________{ FIN ¯\_(ツ)_/¯ }_______________________________
