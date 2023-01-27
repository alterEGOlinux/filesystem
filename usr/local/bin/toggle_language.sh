#!/usr/bin/env sh
##
## ----------------------------------------------------------------------------
##             { alterEGO Linux: "Open the vault of knowledge" }             ##
## ----------------------------------------------------------------------------
##
## /urs/local/bin/toggle_language.sh
##   created     : 2019-05-19 02:36:10 UTC
##   updated     : 2023-01-27 03:44:24 UTC
##   description : Toggle languages using setxkbmap.
## ____________________________________________________________________________

  ## Assumes `setxkbmap -layout 'us,ca'` was launched already.
  ## TODO: Would need to work on a list from the query to allow many language.

  lang=$(setxkbmap -query | awk '
      BEGIN{layout="";variant=""}
      /^layout/{layout=$2}
      /^variant/{variant=" ("$2")"}
      END{printf("%s%s",layout,variant)}')

  if [ "${lang}" = "us" ]; then
      setxkbmap ca
      notify-send "keyboard set to French"
      sleep 2
      killall notify-osd
  elif [ "${lang}" = "ca" ]; then
      setxkbmap us
      notify-send "keyboard set to English"
      sleep 2
      killall notify-osd
  else
      setxkbmap ca
      notify-send "keyboard set to French"
      sleep 2
      killall notify-osd
  fi

## ----------------------------------------------------------------------------
# vim: foldmethod=marker
## ___________________________{ FIN ¯\_(ツ)_/¯ }_______________________________
