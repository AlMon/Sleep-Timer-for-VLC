#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <duration in minutes>"
  exit 1
fi

duration_minutes=$1
duration_seconds=$((duration_minutes * 60))
countdown_seconds=$duration_seconds

echo "Closing VLC in $duration_minutes minutes..."

# Countdown loop
while [ $countdown_seconds -gt 0 ]; do
  minutes_remaining=$((countdown_seconds / 60))
  seconds_remaining=$((countdown_seconds % 60))
  printf "\rTime remaining: %02d:%02d" $minutes_remaining $seconds_remaining
  sleep 1
  countdown_seconds=$((countdown_seconds - 1))
done

# Pause the media being played
osascript -e 'tell application "System Events" to tell process "VLC" to keystroke space'

# Wait a moment to ensure the pause command has been processed
sleep 1

# Close VLC
osascript -e 'quit app "VLC"'
printf "\rVLC closed.                  \n"
