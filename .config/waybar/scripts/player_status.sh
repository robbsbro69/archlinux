#!/bin/bash

# Get list of active players
players=$(playerctl -l 2>/dev/null)

# Loop through players and try to get status
for player in $players; do
    status=$(playerctl -p "$player" status 2>/dev/null)

    if [ "$status" = "Playing" ] || [ "$status" = "Paused" ]; then
        title=$(playerctl -p "$player" metadata title 2>/dev/null)
        [ -z "$title" ] && title="Unknown Title"

        # Truncate to 40 characters
        short_title=$(echo "$title" | cut -c1-40)

        # Icon based on status
        if [ "$status" = "Playing" ]; then
            icon=""
        else
            icon=""
        fi

        echo "$icon $short_title"
        exit 0
    fi
done

# Fallback if no active players
echo " No music"
exit 0

