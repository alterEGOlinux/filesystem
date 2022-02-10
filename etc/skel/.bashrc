## { alterEGO Linux: "Open the vault of knowledge" } ----------------------- ##
##                                                                           ##
## /home/{user}/.bashrc                                                      ##
##   created        : 2021-02-26 02:54:43 UTC                                ##
##   updated        : 2022-02-10 21:36:41 UTC                                ##
##   description    : Bash config file.                                      ##
## _________________________________________________________________________ ##

  [ -f ${HOME}/.alterEGO/.egorc ] && . ${HOME}/.alterEGO/.egorc

## [ bash-completion ] ----------------------------------------------------- ##

  [ -r /usr/share/bash-completion/bash_completion ]                           \
  && . /usr/share/bash-completion/bash_completion

## [ ALIASES ] ------------------------------------------------------------- ##

  alias grep="grep --color=auto"
  alias ll='ls --all --human-readable -l --color=auto'
  alias ls='ls --all --color=auto'
  alias open="xdg-open"

  ##### Makes tmux understand the environment is important.
  alias tmux="env TERM=screen-256color tmux -u"

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

## [ SOURCING ] ------------------------------------------------------------ ##

  [ -f ~/.fzf.bash ] && source ~/.fzf.bash

# vim: syntax=sh
## FIN _____________________________________________________________ ¯\_(ツ)_/¯
