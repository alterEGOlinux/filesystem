## { alterEGO Linux: "Open the vault of knowledge" } ----------------------- ##
##                                                                           ##
## ~/.bashrc                                                                 ##
##   created        : 2021-02-26 02:54:43 UTC                                ##
##   updated        : 2022-02-18 12:27:46 UTC                                ##
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

## [ HISTORY ] ------------------------------------------------------------- ##

  export HISTIGNORE="cd:clear:exit:history:ls"
  export HISTCONTROL=ignoreboth:erasedups
  export HISTSIZE=1000000
  export HISEFILESIZE=1000000
  # export HISTTIMEFORMAT="%Y-%m-%d %T %z "

## [ MAN IN COLOR ] -------------------------------------------------------- ##

  ##### TODO Need to work on the colors.
  export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode – red
  export LESS_TERMCAP_md=$(printf '\e[01;35m') # enter double-bright mode – bold, magenta
  export LESS_TERMCAP_me=$(printf '\e[0m')     # turn off all appearance modes (mb, md, so, us)
  export LESS_TERMCAP_se=$(printf '\e[0m')     # leave standout mode
  export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode – yellow
  export LESS_TERMCAP_ue=$(printf '\e[0m')     # leave underline mode
  export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode – cyan

## [ LOADED ] -------------------------------------------------------------- ##

  export LOADED='bashrc'
  message action "$(basename $BASH_SOURCE) @ $(date | sed 's/  / /g')."

## FIN _____________________________________________________________ ¯\_(ツ)_/¯
# vim: syntax=sh
