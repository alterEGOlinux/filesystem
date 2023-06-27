## -------------------- [* info *]
##
## [.bashrc]
## author        = "alterEGO Linux"
## created       = "2021-02-26 02:54:43 UTC"
## updated       = "2023-03-05 23:10:51 UTC"
## description   = "Bash config file."

  ##: If not running interactively, don't do anything
  [[ $- != *i* ]] && return

## -------------------- [* MODULES *]

  [ -f ${HOME}/.ael/.main ] && . ${HOME}/.ael/.main
  [ -f ~/.fzf.bash ] && source ~/.fzf.bash

## -------------------- [* BASH-COMPLETION *]

  [ -r /usr/share/bash-completion/bash_completion ]                           \
  && . /usr/share/bash-completion/bash_completion

## -------------------- [* LOADED *]

  export LOADED='bashrc'
  ##: Message function from bash-ael/messages.bash
  message action "$(basename $BASH_SOURCE) @ $(date | sed 's/  / /g')."

## -------------------- [ FIN ¯\_(ツ)_/¯ ]
# vim: foldmethod=marker
# vim: syntax=sh
