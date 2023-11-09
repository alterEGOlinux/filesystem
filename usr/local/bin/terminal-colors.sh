#!/usr/bin/env bash
## ----------------------------------------------------------------------- INFO
## [/usr/local/bin/terminal-colors.sh]
## author        : fantomH @alterEGO Linux
## created       : 2020-11-25 13:14:03 UTC
## updated       : 2023-11-09 11:52:40 UTC
## description   : Collection of scripts showing terminal colors.

stack() {
    ## ref. https://unix.stackexchange.com/a/60969
    for i in {0..255}; do
        printf "\x1b[38;5;${i}mcolour${i}\n"
    done
    }

columns() {
    ## ref. https://superuser.com/a/1104214
    for i in {0..255}; do
        printf "\x1b[38;5;${i}mcolor%-5i\x1b[0m" $i
        if ! (( ($i + 1 ) % 8 )); then
            echo
        fi
    done
    }

usage() {
    cat << EOF
Options:
  --stack
  --columns
  --help, --help
  --usage
EOF
    }

case "${@}" in

    --stack )
        stack
        ;;

    --columns )
        columns
        ;;

    ''|-h|--help|--usage )
        usage
        ;;

esac

# vim: foldmethod=marker
## ------------------------------------------------------------- FIN ¯\_(ツ)_/¯
