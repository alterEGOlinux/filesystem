# ~/.profile
#   created        : 2021-04-28 14:59:01 UTC
#   updated        : 2022-09-25 14:20:01 UTC
#   description    : Loaded in non interactive shell.
# ___________________________ { alterEGO Linux: "Open the vault of knowledge" }

## [ SOURCING ]

  [ -f ${HOME}/.alterEGO/.egorc ] && . ${HOME}/.alterEGO/.egorc

## [ LOADED ]

  export LOADED='profile'
  ## Message function from bash-ael/message.bash
  message action "$(basename $BASH_SOURCE) @ $(date | sed 's/  / /g')."

# vim: syntax=sh
# { FIN } __________________________________________________________ ¯\_(ツ)_/¯
