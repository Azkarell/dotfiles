#!/usr/bin/env bash

WALLPAPER_DIR="/usr/share/wallpapers/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)
# Get the name of the focused monitor with hyprctl
FOCUSED_MONITOR=$(hyprctl monitors -j | jq -r '.[] | select(.focused) | .name')
# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Apply the selected wallpaper
hyprctl hyprpaper reload ,"$WALLPAPER"


"$HOME/.config/hypr/Scripts/walcur.sh"
"$HOME/.config/mako/update-theme-wallust.sh"
"$HOME/.config/hypr/Scripts/update_wallpaper.sh"
pywalfox update
