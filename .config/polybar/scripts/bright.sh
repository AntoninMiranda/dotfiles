#!/bin/bash

# Utilise xrandr pour obtenir la luminosité actuelle de l'écran.
brightness=$(cat /sys/class/backlight/intel_backlight/actual_brightness)
brightness=$(echo -n "$brightness" | tr -d '\n')
bright=$(( (brightness * 100) / 96000 ))

if [ $bright -le 33 ]; then
    echo "󰃞 $bright%"
elif [ $bright -le 66 ]; then
    echo "󰃟 $bright%"
else
    echo "󰃠 $bright%"
fi

