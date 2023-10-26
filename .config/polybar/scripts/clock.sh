#!/bin/bash

hours=$(date +"%H")
h=$((10#$hours))
h=$(($h % 12))
min=$(date +"%M")

if [ $h -eq 0 ]; then
    echo "󱑊 $hours:$min"
elif [ $h -eq 1 ]; then
    echo "󱐿 $hours:$min"
elif [ $h -eq 2 ]; then
    echo "󱑀 $hours:$min"
elif [ $h -eq 3 ]; then
    echo "󱑁 $hours:$min"
elif [ $h -eq 4 ]; then
    echo "󱑂 $hours:$min"
elif [ $h -eq 5 ]; then
    echo "󱑃 $hours:$min"
elif [ $h -eq 6 ]; then
    echo "󱑄 $hours:$min"
elif [ $h -eq 7 ]; then
    echo "󱑅 $hours:$min"
elif [ $h -eq 8 ]; then
    echo "󱑆 $hours:$min"
elif [ $h -eq 9 ]; then
    echo "󱑇 $hours:$min"
elif [ $h -eq 10 ]; then
    echo "󱑈 $hours:$min"
elif [ $h -eq 11 ]; then
    echo "󱑉 $hours:$min"
else
    echo "lol"
fi
