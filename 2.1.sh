#!/bin/bash
date >> /tmp/run.log
echo "Hello World!"
cat /tmp/run.log |wc |cut -b6-7>&2

