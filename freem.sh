#!/bin/bash
free | grep Mem | awk '{print $4/$2 * 100.0}' |cut -c 1-4
#echo "$(free -m | grep Mem | awk '{print $4}')/$(free -m | grep buffers/ | awk '{print $4}')/$(free -m | grep Mem | awk '{print $2}'"
