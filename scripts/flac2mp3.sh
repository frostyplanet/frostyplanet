#!/bin/bash 

if [ $# -lt 1 ]; then
    echo "Usage: $0 [-b bitrate] [file] ..."
    echo "       $0 [file] ..."
    echo "Default mp3 bitrate is 128"
    exit
fi

if [ "$1" == "-b" ]; then
    BITRATE=$2
    START_ARG=3
else
    BITRATE=128
    START_ARG=1
fi
COUNT=$START_ARG

while [ $COUNT -le $# ]
do
	oldname=$(eval "echo \${$COUNT}")
	ext=${oldname/*./}
	newname=${oldname%%${ext}}"mp3"
	flac -d -c "${oldname}" | lame -b "$BITRATE" - "${newname}"
let COUNT+=1
done 

