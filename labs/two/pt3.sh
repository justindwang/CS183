#!/bin/bash
x=`date +"%d-%m-%y"`
y=`date "+%T"`
if tail -1 $2 | grep -q "found"
then
	if [ -f $1 ]; then :
	else
	echo ""$x" "$y" - File $1 has been lost" >> $2
	fi
else
	if [ -f $1 ]; then echo ""$x" "$y" - File $1 has been found" >> $2
	else
	:
	fi
fi
