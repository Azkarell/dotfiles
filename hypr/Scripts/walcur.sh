wow=$(hyprctl hyprpaper listloaded)
echo $wow
wallust run $wow
echo " " >> "$HOME/.config/waybar/style.css"
truncate -s-1 "$HOME/.config/waybar/style.css"
