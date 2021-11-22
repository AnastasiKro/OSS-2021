#!/bin/bash
find $HOME -maxdepth 1 -name "*.txt"
B=0
STR=0
find $HOME -maxdepth 1 -name "*.txt" > /tmp/txtfiles.txt
while read y
do
C=`wc -c $y |cut -d" " -f1`
D=`wc -l $y |cut -d" " -f1`
let B=B+C
let STR=STR+D
done < /tmp/txtfiles.txt
echo "$B байт" 
echo "$STR строк"
