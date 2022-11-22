#! /usr/bin/env bash
## ----------------------------------------------------------------------------
##             { alterEGO Linux: "Open the vault of knowledge" }             ##
## ----------------------------------------------------------------------------
##
## ~/.ael/bash-ael/message.bash
##   created        : 2022-02-10 21:46:39 UTC
##   updated        : 2022-11-22 21:23:44 UTC
##   description    : Bash message module.
## ____________________________________________________________________________

## [-- MODULES --]

  # [ -f ${HOME}/.ael/bash-ael/colors.bash ]                                    \
  # && . ${HOME}/.ael/bash-ael/colors.bash

message() {

  ## Usage: message <type> <"Message">

  _msg="${2}"

  case ${1} in

    action )
      printf '%b\n' "${GREEN}[*]${RESET} ${BOLD}${_msg}${RESET}"
      ;;
    result )
      printf '%b\n' "${BLUE}[-]${RESET} ${_msg}"
      ;;
    question )
      ## The input will be in $_INPUT.
      read -p $'\033[34m[?]\033[0m \033[1m'"${_msg}"$'\033[0m ' _INPUT
      ;;
    alert )
      printf '%b\n' "${YELLOW}[!]${RESET} ${_msg}"
      ;;
    warning|error )
      printf '%b\n' "${RED}[!]${RESET} ${BOLD}${_msg}${RESET}"
      ;;
    title )
      printf '%b\n' "${BOLD}${_msg}${RESET}"
      ;;
  esac
}

# vim: foldmethod=marker
## ___________________________{ FIN ¯\_(ツ)_/¯ }_______________________________
