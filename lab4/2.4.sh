#!/bin/bash
while read line
do
echo $line > /tmp/binstr
grep 'bin' /tmp/binstr >&2
done
