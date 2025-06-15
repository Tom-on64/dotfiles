#!/bin/sh

/usr/local/bin/display-switch.sh

# Keyboard layout to Czech QWERTY Mac
setxkbmap -layout cz -variant qwerty-mac

xset s 300 # 5 minutes
feh --bg-fill --randomize ~/Pictures/wallpaper/wall*.png
xmodmap -e "keycode 212 = z"		# Map my F4 key to z (because it's broken on my keyboard)
xmodmap -e "keycode 169 = Delete"	# Map the idk what this does key to Delete :)

exec dwmblocks &
exec xss-lock --transfer-sleep-lock -- lockscreen &
exec picom -b &

# Run DWM
exec dwm

