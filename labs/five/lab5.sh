#!/bin/bash
if grep -q "maximum authentication" /var/log/secure
then
	echo "WARNING: Possible attack on user dummy-user" | mail -s "[WARNING]" root@jwang592.localdomain
	echo "" > /var/log/secure
fi

