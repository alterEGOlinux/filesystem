#!/usr/bin/env bash
## ----------------------------------------------------------------------- INFO
## [/usr/local/bin/screenshot.sh]
## author        : fantomH @alterEGO Linux
## created       : 2020-07-17 15:57:36 UTC
## updated       : 2023-11-09 02:06:06 UTC
## description   : Screenshots application.

DIRECTORY="${HOME}/tmp/screenshots"

if [[ ! -d ${DIRECTORY} ]]; then
  mkdir -p ${DIRECTORY}
fi

output="${DIRECTORY}/screenshot-$(date --utc "+%Y%m%d%H%M%S").png"

case ${@} in

  --area )
    import -pause 1 ${output} && gimp ${output} 2> /dev/null &
    ;;

  --screen )
    import -screen ${output} && gimp ${output} 2> /dev/null &
    ;;

  --window )
    import -window root ${output} && gimp ${output} 2>/dev/null & 
    ;;

esac

# vim: foldmethod=marker
## ------------------------------------------------------------- FIN ¯\_(ツ)_/¯
