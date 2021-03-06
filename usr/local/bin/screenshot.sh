#!/usr/bin/env bash
## { alterEGO Linux: "Open the vault of knowledge" } ----------------------- ##
##                                                                           ##
## /usr/local/bin/screenshot.sh                                              ##
##   created     : 2020-07-17 15:57:36 UTC                                   ##
##   updated     : 2022-03-21 18:39:19 UTC                                   ##
##   description : Screenshots application.                                  ##
## _________________________________________________________________________ ##

  directory="${HOME}/tmp/screenshots"

  if [[ ! -d ${directory} ]]; then
    mkdir -p ${directory}
  fi

  output="${directory}/screenshot-$(date --utc "+%Y%m%d%H%M%S").png"

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

## FIN _____________________________________________________________ ¯\_(ツ)_/¯
