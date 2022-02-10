## { alterEGO Linux: "Open the vault of knowledge" } ----------------------- ##
##                                                                           ##
## /home/{user}/.alterEGO/egoSHlib/message.bash                              ##
##   created        : 2022-02-10 21:46:39 UTC                                ##
##   updated        : 2022-02-10 21:46:48 UTC                                ##
##   description    : Bash message module.                                   ##
## _________________________________________________________________________ ##

message() {

  ## Usage: message <type> <"Message">

  _msg_blue="\033[34m"
  _msg_bold="\033[1m"
  _msg_green="\033[32m"
  _msg_red="\033[31m"
  _msg_reset="\033[0m"

  _msg="${2}"

  case ${1} in

    action )
      printf '%b\n' "${_msg_green}[*]${_msg_reset} ${_msg_bold}${_msg}${_msg_reset}"
      ;;
    result )
      printf '%b\n' "${_msg_blue}[-]${_msg_reset} ${_msg_bold}${_msg}${_msg_reset}"
      ;;
    warning )
      printf '%b\n' "${_msg_red}[!]${_msg_reset} ${_msg_bold}${_msg}${_msg_reset}"
  esac
}

# vim: syntax=sh
## FIN _____________________________________________________________ ¯\_(ツ)_/¯
