#!/usr/bin/env bash

set -e
WALLPAPERS_DIR="/usr/share/wallpapers/"

SELECTED=$(for i in $(find $WALLPAPERS_DIR -maxdepth 1 -type f -name '*.jpg' -o -name '*.png' -o -name '*.jpeg'); do echo -en "$i\0icon\x1f$i\n"; done | rofi -dmenu -p "wallpaper")
echo $SELECTED
# NEW_WALL=$(ls $WALLPAPERS_DIR |  rofi -p "wallpaper" -dmenu || exit 0)

# SELECTED=$WALLPAPERS_DIR$NEW_WALL

if [[ -f $SELECTED ]]; then


	FOCUSED_MONITOR=$(hyprctl monitors -j | jq -r '.[] | select(.focused) | .name')

	hyprctl hyprpaper reload "$FOCUSED_MONITOR","$SELECTED" 
	$HOME/.config/hypr/Scripts/walcur.sh
	$HOME/.config/mako/update-theme-wallust.sh
	pywalfox update
	$HOME/.config/hypr/Scripts/update_wallpaper.sh
fi
