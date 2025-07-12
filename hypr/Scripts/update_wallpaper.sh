
# read wallpaper from hyprconfig
#


WALLPAPER=$(sed -n -e '1p' $HOME/.config/hypr/wallpaper.conf | sed -e 's/\$wallpaper=//g')
echo $WALLPAPER
sed -i 's',"preload =.*","preload = $WALLPAPER",g "$HOME/.config/hypr/hyprpaper.conf"

sed -i 's','wallpaper =.*',"wallpaper = \, $WALLPAPER",g "$HOME/.config/hypr/hyprpaper.conf"
