
#!/bin/bash

FOCUSED_MONITOR=$(hyprctl monitors -j | jq -r '.[] | select(.focused) | .name')

hyprctl hyprpaper reload "$FOCUSED_MONITOR","$WALLPAPERS_DIR$NEW_WALL"

walcur.sh

update-theme.sh
pywalfox update
