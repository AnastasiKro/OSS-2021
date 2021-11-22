#!/bin/bash
N=$(echo $USER |wc -c)
M=$(echo $HOME |wc -c)
let N=N+M-2
echo "$USER $HOME $N"
