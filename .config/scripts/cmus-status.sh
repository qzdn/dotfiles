#!/bin/bash
FULL_INFO=$(cmus-remote -Q)

if echo "$FULL_INFO" | grep -q "not running"; then
  exit 0
fi

status=$(echo "$FULL_INFO" | grep '^status ' | awk '{print $2}' | sed -e 's/playing/▶️/' -e 's/paused/⏸️/' -e 's/stopped/⏹️/')
artist=$(echo "$FULL_INFO" | grep '^tag artist ' | sed 's/tag artist //')
title=$(echo "$FULL_INFO" | grep '^tag title ' | sed 's/tag title //')

echo "$status $artist - $title "
