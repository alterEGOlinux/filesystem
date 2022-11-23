## ----------------------------------------------------------------------------
##             { alterEGO Linux: "Open the vault of knowledge" }             ##
## ----------------------------------------------------------------------------
##
## ~/.bashrc
##   created        : 2021-02-26 02:54:43 UTC
##   updated        : 2022-11-23 12:29:01 UTC
##   description    : Bash config file.
## ____________________________________________________________________________

  # If not running interactively, don't do anything
  [[ $- != *i* ]] && return

## [-- MODULES --]

  [ -f ${HOME}/.ael/.main ] && . ${HOME}/.ael/.main
  [ -f ~/.fzf.bash ] && source ~/.fzf.bash

## [-- BASH-COMPLETION --]

  [ -r /usr/share/bash-completion/bash_completion ]                           \
  && . /usr/share/bash-completion/bash_completion

## [-- LOADED --]

  export LOADED='bashrc'
  ## Message function from bash-ael/messages.bash
  message action "$(basename $BASH_SOURCE) @ $(date | sed 's/  / /g')."

## ----------------------------------------------------------------------------
# vim: foldmethod=marker
# vim: syntax=sh
## ___________________________{ FIN ¯\_(ツ)_/¯ }_______________________________
