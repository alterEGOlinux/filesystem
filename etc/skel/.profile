## { alterEGO Linux: "Open the vault of knowledge" } ----------------------- ##
##                                                                           ##
## ~/.profile                                                                ##
##   created        : 2021-04-28 14:59:01 UTC                                ##
##   updated        : 2022-02-15 21:36:28 UTC                                ##
##   description    : Loaded in non interactive shell.                       ##
## _________________________________________________________________________ ##

  [ -f ${HOME}/.alterEGO/.egorc ] && . ${HOME}/.alterEGO/.egorc

  message action "Sourced $(basename $BASH_SOURCE)"

## [ LOADED ] -------------------------------------------------------------- ##

  export LOADED='profile'
  message action "$(basename $BASH_SOURCE)"

## FIN _____________________________________________________________ ¯\_(ツ)_/¯
# vim: syntax=sh
