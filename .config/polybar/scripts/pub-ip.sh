#!/bin/bash

if ifconfig tun0 &> /dev/null; then
    tun0_ip=$(ifconfig tun0 | grep -oE 'inet ([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+)' | cut -d' ' -f2)
    echo "$tun0_ip"
else
    wlp0s20f3_ip=$(ifconfig wlp0s20f3 | grep -oE 'inet ([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+)' | cut -d' ' -f2)
    echo "$wlp0s20f3_ip"
fi
