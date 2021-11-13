#!/bin/bash
DIR=/home/avtobus
echo "Домашний каталог пользователя"
echo ${DIR}
echo "содержит обычных файлов:"
a=`ls -l $DIR | wc | cut -b6-7`
echo $a
echo "содержит скрытых файлов:"
b=`ls -la $DIR | wc | cut -b6-7`
let "b=b-a"
echo $b

