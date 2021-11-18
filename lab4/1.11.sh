#!/bin/bash
DIR="/tmp"
echo "Каталоги:"
ls -l $DIR| grep '^d'
echo "Обычные файлы:"
ls -l $DIR|grep '^-'
echo "Символьные ссылки:"
ls -l $DIR| grep '^l'
echo "Символьные устройства:"
ls -l $DIR| grep '^c'
echo "Болчные устройства:"
ls -l $DIR| grep '^b'

