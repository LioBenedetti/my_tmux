#!/bin/bash
f=$(free | grep Mem | awk '{print $4}')
a=$(free | grep Mem | awk '{print $2}')
u=$(free | grep Mem | awk '{print $3}')
fm=$(echo "scale=5; $f/$a * 100" | bc | cut -c 1-4;)
um=$(echo "scale=5; $u/$a * 100" | bc | cut -c 1-4)
echo $um/$fm
#echo "$(free -m | grep Mem | awk '{print $4}')/$(free -m | grep buffers/ | awk '{print $4}')/$(free -m | grep Mem | awk '{print $2}'"
