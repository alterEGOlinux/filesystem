## ----------------------------------------------------------------------------
##             { alterEGO Linux: "Open the vault of knowledge" }             ##
## ----------------------------------------------------------------------------
##
## ~/.xinitrc
##   created        : 2021-02-23 02:54:43 UTC
##   updated        : 2022-11-23 12:25:45 UTC
##   description    : Starts Window Manager with startx.
## ____________________________________________________________________________

# Executed by startx (run your window manager from here)
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

## ----------------------------------------------------------------------------
# vim: foldmethod=marker
## ___________________________{ FIN ¯\_(ツ)_/¯ }_______________________________
