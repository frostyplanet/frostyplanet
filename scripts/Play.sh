#!/bin/sh

if [[ -a "$1" ]]; then
	nyxmms2 stop
	nyxmms2 clear
	/opt/bin/Add_to_Playlist.sh "$1"
fi

