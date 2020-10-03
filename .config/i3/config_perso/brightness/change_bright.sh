#!/bin/bash

BRIGHT=`cat /home/lobbyra/.config/i3/config_perso/brightness/brightness.txt`

if [ "$1" = '+' ]; then
    NEWBRIGHT=$(echo "$BRIGHT + 0.1" | bc)
    if [ "$(echo "$NEWBRIGHT > 1.0" | bc)" -eq 1 ]; then
        NEWBRIGHT='1.0'
    fi
elif [ "$1" = '-' ]; then
    NEWBRIGHT=$(echo "$BRIGHT - 0.1" | bc)
    if [ "$(echo "$NEWBRIGHT < 0.0" | bc)" -eq 1 ]; then
        NEWBRIGHT='0.0'
    fi
fi

echo $NEWBRIGHT > /home/lobbyra/.config/i3/config_perso/brightness/brightness.txt

xrandr --output eDP-1 --brightness $NEWBRIGHT
