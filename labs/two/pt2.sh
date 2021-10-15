#!/bin/bash
awk -F\: '{printf("%s %s ",$1,$3); system("getent group "$4" | cut -d: -f1 | tr -d [\n")}' /etc/passwd
