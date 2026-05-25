#!/bin/sh

swaybg -i ~/Media/Wallpapers/ultrakill.png -m fill &

swayidle -w timeout 300 'swaylock' &

wl-clip-persist --clipboard regular --reconnect-tries &

mako &

kanshi &

waybar &

