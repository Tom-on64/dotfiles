#!/bin/sh

kbd-cz
xinput set-prop 'pointer:bcm5974' 'libinput Disable While Typing Enabled' 0
xmodmap $XDG_CONFIG_HOME/x11/xmodmap
xset s 300 # 5 minutes
/etc/acpi/lid.sh
wallpaper

# Run daemons 
#exec $HOME/.config/polybar/launch.sh &
exec dwmblocks &
exec xss-lock --transfer-sleep-lock -- lockscreen &
exec picom -b &

# Run WM
exec dwm

