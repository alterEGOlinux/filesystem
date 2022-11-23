## ----------------------------------------------------------------------------
##             { alterEGO Linux: "Open the vault of knowledge" }             ##
## ----------------------------------------------------------------------------
##
## ~/.profile
##   created        : 2021-04-28 14:59:01 UTC
##   updated        : 2022-11-23 12:53:45 UTC
##   description    : Loaded in non interactive shell.
## ____________________________________________________________________________

## [-- MODULES --]

  [ -f ${HOME}/.ael/.main ] && . ${HOME}/.ael/.main

## [-- LOADED --]

  export LOADED='profile'
  ## Message function from bash-ael/messages.bash
  message action "$(basename $BASH_SOURCE) @ $(date | sed 's/  / /g')."


## ----------------------------------------------------------------------------
# vim: foldmethod=marker
# vim: syntax=sh
## ___________________________{ FIN ¯\_(ツ)_/¯ }_______________________________
