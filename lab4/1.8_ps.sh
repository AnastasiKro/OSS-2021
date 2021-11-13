#!/bin/bash
echo "Процессов текущего пользователя:"
a=`whoami`
whoami
b=`ps -eF| grep $a |wc |cut -b6-7`
echo $b
echo "Процессов root:"
c="root"
b=`ps -eF| grep $c |wc |cut -b6-7`
echo $b
