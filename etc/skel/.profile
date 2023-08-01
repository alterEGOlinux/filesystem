## ----------------------------------------------------------------------- INFO
## [.profile]
## author        = "fantomH @ alterEGO Linux"
## created       = 2021-04-28 14:59:01 UTC
## updated       = 2023-08-01 01:28:01 UTC
## description   = "Loaded in non interactive shell."

## -------------------- [ MODULES ]

  [ -f ${HOME}/.ael/.main ] && . ${HOME}/.ael/.main

## -------------------- [ LOADED ]

  export LOADED='profile'
  ## Message function from bash-ael/messages.bash
  message action "$(basename $BASH_SOURCE) @ $(date | sed 's/  / /g')."

# vim: syntax=sh
# vim: foldmethod=marker
## ------------------------------------------------------------- FIN ¯\_(ツ)_/¯
