# -----------------------------------------------------------------------------
#              { alterEGO Linux: "Open the vault of knowledge" }
# -----------------------------------------------------------------------------
#
# ~/.bashrc
#   created        : 2021-02-26 02:54:43 UTC
#   updated        : 2023-03-02 12:01:55 UTC
#   description    : Bash config file.
# _____________________________________________________________________________

  #... If not running interactively, don't do anything
  [[ $- != *i* ]] && return

# [ modules ]

  [ -f ${HOME}/.ael/.main ] && . ${HOME}/.ael/.main
  [ -f ~/.fzf.bash ] && source ~/.fzf.bash

# [ bash-completion ]

  [ -r /usr/share/bash-completion/bash_completion ]                           \
  && . /usr/share/bash-completion/bash_completion

# [ loaded ]

  export LOADED='bashrc'
  #... Message function from bash-ael/messages.bash
  message action "$(basename $BASH_SOURCE) @ $(date | sed 's/  / /g')."

# -----------------------------------------------------------------------------
# vim: foldmethod=marker
# vim: syntax=sh
# ____________________________{ FIN ¯\_(ツ)_/¯ }_______________________________
