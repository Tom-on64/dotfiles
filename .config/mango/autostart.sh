#!/bin/sh

swaybg -i ~/Media/Wallpapers/ultrakill.png -m fill &

swayidle -w \
	timeout 300 'swaylock' \
	before-sleep 'swaylock' &

mako &

waybar &

