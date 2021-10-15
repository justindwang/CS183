#!/bin/bash
Y=0
for X in `find /usr/src/kernels -name *.h`
do
	Y=$((Y+`grep -c -i -w "magic" "$X"`))
done
echo $Y
