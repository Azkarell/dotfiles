
PRESETS=$(easyeffects -p | tr , '\n' | sed -e s#Output\ Presets:\ ##g -e s#Input\ Presets:\ ##g -e '#^$#d')
SELECTED=$(echo "$PRESETS" | rofi -dmenu -config $HOME/.config/rofi/config-no-icons.rasi -p "Presets")
echo $SELECTED
easyeffects -l "$SELECTED"
