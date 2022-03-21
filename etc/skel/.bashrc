## { alterEGO Linux: "Open the vault of knowledge" } ----------------------- ##
##                                                                           ##
## ~/.bashrc                                                                 ##
##   created        : 2021-02-26 02:54:43 UTC                                ##
##   updated        : 2022-03-21 09:06:22 UTC                                ##
##   description    : Bash config file.                                      ##
## _________________________________________________________________________ ##

  # If not running interactively, don't do anything
  [[ $- != *i* ]] && return

## [ SOURCING ] ------------------------------------------------------------ ##

  [ -f ${HOME}/.alterEGO/.egorc ] && . ${HOME}/.alterEGO/.egorc
  [ -f ~/.fzf.bash ] && source ~/.fzf.bash

## [ bash-completion ] ----------------------------------------------------- ##

  [ -r /usr/share/bash-completion/bash_completion ]                           \
  && . /usr/share/bash-completion/bash_completion

## [ LOADED ] -------------------------------------------------------------- ##

  export LOADED='bashrc'
  message action "$(basename $BASH_SOURCE) @ $(date | sed 's/  / /g')."

## FIN _____________________________________________________________ ¯\_(ツ)_/¯
# vim: syntax=sh
