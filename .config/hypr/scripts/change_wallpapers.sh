#!/bin/bash

WALLPAPER_DIRECTORY="/home/robbsbro/Pictures/Wallpapers"

# Get two random images
WALLPAPERS=($(find "$WALLPAPER_DIRECTORY" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | shuf -n 2))

# Make sure we have 2 images
if [[ ${#WALLPAPERS[@]} -lt 2 ]]; then
  echo "Not enough wallpapers found in $WALLPAPER_DIRECTORY"
  exit 1
fi

# Assign wallpapers
LAPTOP_WALL="${WALLPAPERS[0]}"
MONITOR_WALL="${WALLPAPERS[1]}"

# Preload
hyprctl hyprpaper preload "$LAPTOP_WALL"
hyprctl hyprpaper preload "$MONITOR_WALL"

# Set wallpaper
hyprctl hyprpaper wallpaper "eDP-1,$LAPTOP_WALL"
hyprctl hyprpaper wallpaper "HDMI-A-1,$MONITOR_WALL"

# Optional: free RAM from old images
sleep 1
hyprctl hyprpaper unload unused
