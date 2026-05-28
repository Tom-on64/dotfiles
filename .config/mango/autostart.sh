#!/bin/sh

awww-daemon &
awww img "$(xdg-user-dir PICTURES)/Wallpapers/ultrakill.png"

swayidle -w timeout 300 'swaylock' &

wl-clip-persist --clipboard regular --reconnect-tries &

mako &

kanshi &

waybar &

