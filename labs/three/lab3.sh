#!/bin/bash
echo 'finding all files in /bin, /sbin, and /usr/sbin that are setuid and owned by root:'
read -p "Enter to continue"
find /bin /sbin /usr/sbin -user root -perm -4000 -exec ls -lah {} \;
read -p "Enter to continue"
echo 'finding files with setuid or setgid enabled'
read -p "Enter to continue"
find / \( -perm -4000 -o -perm -2000 \) -exec ls -lah {} \;
read -p "Enter to continue"
echo 'finding files in /var that changed in last 20 min'
read -p "Enter to continue"
find /var -mmin -20 -exec ls -lah {} \;
read -p "Enter to continue"
echo 'finding files in /var of zero length'
read -p "Enter to continue"
find /var -size 0 -exec ls -lah {} \;
read -p "Enter to continue"
echo 'finding files in /dev that are not regular files and also not directories'
read -p "Enter to continue"
find /dev ! \( -type d -o -type f \) -exec ls -lah {} \;
read -p "Enter to continue"
echo 'finding directories in /home not owned by root and changing permissions to 711'
read -p "Enter to continue"
find /home -type d ! -user root -exec chmod 711 {} \; -ls
read -p "Enter to continue"
echo 'finding regular files in /home not owned by root and changing permissions to 755'
read -p "Enter to continue"
find /home -type f ! -user root -exec chmod 755 {} \; -exec ls -lah {} \;
read -p "Enter to continue"
echo 'finding files of all types in /etc that have changed in the last 5 days'
read -p "Enter to continue"
find /etc ! -type d -mtime -5 -exec ls -lah {} \;
