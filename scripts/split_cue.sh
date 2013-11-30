#!/bin/bash

TEMPNAME="track"
if [[ $# -lt 2 ]]; then
    echo "Usage : $0 [cuefile] [sound file]"
    exit
fi

#PERFORMER=`grep PERFORMER $1|sed 's/^PERFORMER //'`
EXT=`echo $2|awk -F. '{print $NF}'`
echo $EXT
FILELINE=`grep -n ^FILE "$1"|awk -F: '{print $1}'`
FILELINE=`expr $FILELINE + 1`
#split the file
#cuebreakpoints "$1"|shnsplit -n "$TEMPNAME" -o $EXT "$2"
shnsplit -f "$1" -t "%n %t" "$2"
#rename the songs
#tail -n+$FILELINE "$1"|awk '
#/^\ +TRACK/ { COUNTER = $2;}
#/^\ +TITLE/ {
#    FILE="";
#    for (i=2;i<=NF;i++) {FILE = FILE" "$i; }
#    FILE=substr(FILE, 3, length(FILE)-4);
#    gsub(/\//,"-",FILE);
#    gsub(/`/,"\\`",FILE);
#    gsub(/\"/,"\\\"",FILE);
#    gsub(/\$/,"\\$",FILE);
#    printf "mv \"'$TEMPNAME'%s.%s\" \"%s %s.%s\";", COUNTER, "'$EXT'", COUNTER, FILE , "'$EXT'"
#    }
#'|/bin/sh

