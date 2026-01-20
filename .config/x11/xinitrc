#!/bin/sh

setxkbmap -layout cz -variant qwerty-mac
xinput set-prop 'pointer:bcm5974' 'libinput Disable While Typing Enabled' 0
xmodmap $XDG_CONFIG_HOME/x11/xmodmap
xset s 300 # 5 minutes
/etc/acpi/lid.sh
wallpaper

# Run daemons 
exec dwmblocks &
exec xss-lock --transfer-sleep-lock -- lockscreen &
exec picom -b &

# Run WM
exec dwm

