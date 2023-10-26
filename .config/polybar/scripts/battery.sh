#!/bin/bash

# Récupérer le pourcentage de batterie
function percentage () {
    battery_percentage=$(upower -i $(upower -e | grep battery) | grep -E "percentage" | awk 'NR==1{print $2}' | sed 's/%//')
    charging=$(upower -i $(upower -e | grep battery) | grep -E "state" | awk 'NR==1{print $2}')
    if [ "$charging" = "discharging" ]; then
        if [ $battery_percentage -le 10 ]; then
            echo "  $battery_percentage%"
        elif [ $battery_percentage -le 35 ]; then
            echo "  $battery_percentage%"
        elif [ $battery_percentage -le 65 ]; then
            echo "  $battery_percentage%"
        elif [ $battery_percentage -le 85 ]; then
            echo "  $battery_percentage%"
        else
            echo "  $battery_percentage%"
        fi
    else
        echo -e "⚡ $battery_percentage%"
    fi
}

function battery_time() {
    battery_time=$(upower -i $(upower -e | grep battery) | grep -E "time to empty" | awk 'NR==1{print $4}' | sed 's/%//')
    echo "$battery_time hours"
}

case "$1" in
    --percentage)
        percentage
        ;;
    --time)
        battery_time
        ;;
    *)
        percentage
        ;;
esac
