#!/bin/sh
function explore ()
{
	if [[ -d "$1" ]]
	then
		FILE_LIST=`ls "$1"|sed 's/\ /||/g'`
		echo "$1"
		cd "$1"
		#`echo $1|sed 's/\ /\\\ /g'`
		for file in $FILE_LIST
		do
			file=`echo $file|sed 's/||/\ /g'`
			explore "$file"
		done
		cd .. 
	else
		nyxmms2 add "$1"
	fi
}

#FILE_ARG=`echo ${1// /\\ }`
if [[ -a "$1" ]]; then
	explore "$1"
	nyxmms2 play
fi

