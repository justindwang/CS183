#!/bin/bash

# Creates file named text that has the pid, elapsed CPU time, and user of all the 
# processes that has an elapsed CPU time over 120 seconds and the user isn't root.
# ps -e -o "pid,etimes,user" | grep -v 'root' | awk '{if($2>20) print $0}' > /root/CS183_Lab8/text

# Creates a for loop that iterates equal to the amount of lines in the file text which would be
# the number of processes. For loop then calls kill on the pid of those processes.
for i in $(ps -e -o "pid,etimes,user" | grep -v 'root' | awk '{if($2>120) print $0}' | awk '{print NR}')
do
	# if statement because we don't want to call kill on the first line which is the
	# string headers
	if [ $i -ne 1 ]
	then
		kill $(ps -e -o "pid,etimes,user" | grep -v 'root' | awk '{if($2>120) print $0}' | awk '{print $1}' | head -$i | tail -1)
	fi
done

