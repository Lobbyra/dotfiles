#!/bin/bash

# Parameters are :
#	- '-' for decrease volume.
#	- '+' for increase volume.
#	- 'm' to mute
#
# All changes are done to Master volume.


VOLUME=$(cat $HOME/.config/i3/config_perso/volume_shortcut/volume.txt)

if [ "$1" = '-' ]
then
	NEWVOLUME=$(echo $VOLUME - 5 | bc)
	if [ $NEWVOLUME < 0 ]
	then
		NEWVOLUME=0;
	fi
	amixer set Master $NEWVOLUME unmute
	echo $NEWVOLUME > $HOME/.config/i3/config_perso/volume_shortcut/volume.txt

elif [ "$1" = '+' ]
then
	NEWVOLUME=$(echo $VOLUME + 5 | bc)
	if [ $NEWVOLUME > 100 ]
	then
		NEWVOLUME=100;
	fi
	amixer set Master $NEWVOLUME unmute
	echo $NEWVOLUME > $HOME/.config/i3/config_perso/volume_shortcut/volume.txt
elif [ "$1" = 'm' ]
then
	amixer set Master $VOLUME mute
fi

echo $VOLUME 
