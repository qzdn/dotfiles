#!/bin/bash

if xset -q | grep -q "LED mask:.*[0-9]\{4\}1[0-9]\{3\}"; then
    echo " RU "
else
    echo " US "
fi

