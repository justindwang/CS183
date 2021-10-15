#!/bin/bash
if tail -1 /var/log/cs183/uptime.log | grep -q "found"
	then echo "found"
	else echo "lost"
fi
