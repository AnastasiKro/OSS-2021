#!/bin/bash

gcc 2.3.c -o bin
./bin & ps -fH
wait
