# ~/.config/hypr/scripts/screenshot.sh

#!/bin/bash
grim -g "$(slurp)" ~/Pictures/Screenshots/screenshot-$(date +%Y-%m-%d_%H-%M-%S).png
