#!/bin/bash

if xset -q | grep -q "LED mask:.*00000002"; then
    echo " US "
else
    echo " RU "
fi

#pkill -RTMIN+12 i3blocks
#pkill -SIGRTMIN+12 i3blocks
