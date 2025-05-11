#!/bin/bash

# Log the current date and action for debugging
LOGFILE=~/.config/hypr/scripts/autodisplay.log
echo "Running at $(date)" >> $LOGFILE

# Check if external monitor is connected
if hyprctl monitors | grep -q "HDMI-A-1"; then
    # Disable the laptop screen (eDP-1) and enable the external monitor (HDMI-A-1)
    echo "External monitor found, disabling eDP-1..." >> $LOGFILE
    hyprctl keyword monitor "eDP-1,disable"
    hyprctl keyword monitor "HDMI-A-1,preferred,auto,1"
else
    # No external monitor, enable the laptop screen (eDP-1)
    echo "No external monitor found, enabling eDP-1..." >> $LOGFILE
    hyprctl keyword monitor "eDP-1,preferred,auto,1"
fi

