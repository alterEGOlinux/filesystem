# ~/.bashrc
#   created        : 2021-02-26 02:54:43 UTC
#   updated        : 2022-09-25 14:01:15 UTC
#   description    : Bash config file.
# ___________________________ { alterEGO Linux: "Open the vault of knowledge" }

  # If not running interactively, don't do anything
  [[ $- != *i* ]] && return

## [ SOURCING ]

  [ -f ${HOME}/.alterEGO/.egorc ] && . ${HOME}/.alterEGO/.egorc
  [ -f ~/.fzf.bash ] && source ~/.fzf.bash

## [ bash-completion ]

  [ -r /usr/share/bash-completion/bash_completion ]                           \
  && . /usr/share/bash-completion/bash_completion

## [ LOADED ]

  export LOADED='bashrc'
  ## Message function from bash-ael/message.bash
  message action "$(basename $BASH_SOURCE) @ $(date | sed 's/  / /g')."

# vim: syntax=sh
# { FIN } __________________________________________________________ ¯\_(ツ)_/¯
