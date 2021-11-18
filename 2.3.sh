#!/bin/bash
FILE="/home/avtobus/bash.txt"
grep "000000" $FILE> /tmp/zeros
grep -v "00000" $FILE> /tmp/nozeros
echo "Первые 10 строк в zeros"
head /tmp/zeros
echo "Последние 10 в zeros"
tail /tmp/zeros
echo "Первые 10 строк в nozeros"
head /tmp/nozeros
echo "Последние 10 в nozeros"
tail /tmp/nozeros
