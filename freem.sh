#!/bin/bash
f=$(free | grep + | awk '{print $4}')
u=$(free | grep Mem | awk '{print $2}')
echo "scale=5; $f/$u * 100" | bc | cut -c 1-4
#echo "$(free -m | grep Mem | awk '{print $4}')/$(free -m | grep buffers/ | awk '{print $4}')/$(free -m | grep Mem | awk '{print $2}'"
