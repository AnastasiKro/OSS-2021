#!/bin/bash
bash 3.1.sh "$@"
for i in "$@"
do
bash 3.1.sh i
done
