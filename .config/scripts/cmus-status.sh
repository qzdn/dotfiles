#!/bin/bash
FULL_INFO=$(cmus-remote -Q)

if [[ -z "$FULL_INFO" ]]; then
  exit 0
else
  status=$(echo "$FULL_INFO" | grep '^status ' | awk '{print $2}' | sed -e 's/playing/▶️/' -e 's/paused/⏸️/' -e 's/stopped/⏹️/')
  artist=$(echo "$FULL_INFO" | grep '^tag artist ' | sed 's/tag artist //')
  title=$(echo "$FULL_INFO" | grep '^tag title ' | sed 's/tag title //')
  
  if [[ -z "$artist" && -z "$title" ]]; then
    exit 0
  else
    echo "$status $artist - $title "
  fi
fi
