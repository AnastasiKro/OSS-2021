#!/bin/bash

gcc 2.2.c -o bin
./bin & ps -fH
wait
