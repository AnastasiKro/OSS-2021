#!/bin/bash
ps -e -o cmd,ruid,euid > /tmp/uid.txt
while read line
do
##echo $line
RUID=`echo $line | rev |cut -d' ' -f 1 | rev`
EEUID=`echo $line |rev |cut -d' ' -f 2 | rev`
if [ "$RUID" != "$EEUID" ]
then
echo $line
fi
##echo $RUID 
##echo $EEUID
done </tmp/uid.txt
