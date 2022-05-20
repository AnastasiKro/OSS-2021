#!/bin/bash
for ((;;))
do
sudo systemctl list-units --type=service --state running | cut -d " " -f 1 > file1
grep -F -f /etc/blacklist file1 > file2
while IFS= read -r line
do
	echo "$line stopped"
	systemctl stop $line
done < file2
sleep 60
done
