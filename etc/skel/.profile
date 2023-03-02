# -----------------------------------------------------------------------------
#              { alterEGO Linux: "Open the vault of knowledge" }
# -----------------------------------------------------------------------------
#
# ~/.profile
#   created        : 2021-04-28 14:59:01 UTC
#   updated        : 2023-03-02 12:02:52 UTC
#   description    : Loaded in non interactive shell.
# _____________________________________________________________________________

# [ modules ]

  [ -f ${HOME}/.ael/.main ] && . ${HOME}/.ael/.main

# [ loaded ]

  export LOADED='profile'
  #... Message function from bash-ael/messages.bash
  message action "$(basename $BASH_SOURCE) @ $(date | sed 's/  / /g')."

# -----------------------------------------------------------------------------
# vim: foldmethod=marker
# vim: syntax=sh
# ____________________________{ FIN ¯\_(ツ)_/¯ }_______________________________
