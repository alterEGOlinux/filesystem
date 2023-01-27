#!/usr/bin/env bash

## ----------------------------------------------------------------------------
##             { alterEGO Linux: "Open the vault of knowledge" }             ##
## ----------------------------------------------------------------------------
##
## /usr/local/bin/tmuxplus.sh
##   created        : 2020-10-15 17:14:53 UTC
##   updated        : 2023-01-27 03:29:11 UTC
##   description    : Tmux wrapper.
## ____________________________________________________________________________


tmux_attach() {
  ## ref. https://github.com/nwallace/dotfiles/blob/master/scripts/bin/functions

  session="$(tmux ls -F '#{session_name}' | fzf)"

  if [[ -n "${session}" ]]; then
      env TERM=screen-256color tmux -u a -t "${session}"
    else
      exit 0
  fi

}

tmux_background() {
  ## Sends commands to a detached session.

  tmux new-session -d -s ${session}
  sleep 0.5
  tmux send-keys -t ${session} "${cmd}" enter

}

tmux_wrapper() {
  ## Generates a random session.

  session=$(echo MENU${RANDOM})

  env TERM=screen-256color                                                    \
  tmux -u new-session -s "${session}" \;                                      \
  send-keys -t "${session}" "${cmd}" enter
  # sleep 1
  # tmux detach -s "${session}"

}

while [[ "${1}" != "" ]]; do
    case ${1} in

      -a|--attach )
        tmux_attach
        ;;

      -b|--background )
        shift
        session="${1}"
        cmd="${2}"
        tmux_background
        ;;

      -w|--wrapper )
        shift
        cmd="${1}"
        tmux_wrapper
        ;;

    esac
    shift
done

## ----------------------------------------------------------------------------
# vim: foldmethod=marker
## ___________________________{ FIN ¯\_(ツ)_/¯ }_______________________________
