#!/bin/bash

rm -fr ./.config
rm -fr ./etc
rm -f .xinitrc .zshenv

# Dotfiles in $HOME
cp $HOME/.xinitrc .
cp $HOME/.zshenv .

# Configs in .config
mkdir -p ./.config
cp -r $XDG_CONFIG_HOME/alacritty ./.config
cp -r $XDG_CONFIG_HOME/fastfetch ./.config
cp -r $XDG_CONFIG_HOME/mako ./.config
cp -r $XDG_CONFIG_HOME/mango ./.config
cp -r $XDG_CONFIG_HOME/mpd ./.config
cp -r $XDG_CONFIG_HOME/nvim ./.config && rm -f ./.config/nvim/lazy-lock.json
cp -r $XDG_CONFIG_HOME/nwg-look ./.config
cp -r $XDG_CONFIG_HOME/scripts ./.config
cp -r $XDG_CONFIG_HOME/zsh ./.config && rm -fr ./.config/zsh/.zcompdump*
cp -r $XDG_CONFIG_HOME/dunst ./.config
cp -r $XDG_CONFIG_HOME/pcmanfm ./.config
cp -r $XDG_CONFIG_HOME/picom ./.config
cp -r $XDG_CONFIG_HOME/rmpc ./.config
cp -r $XDG_CONFIG_HOME/rofi ./.config
cp -r $XDG_CONFIG_HOME/swaylock ./.config
cp -r $XDG_CONFIG_HOME/waybar ./.config
cp -r $XDG_CONFIG_HOME/x11 ./.config
cp -r $XDG_CONFIG_HOME/user-dirs.dirs ./.config
cp -r $XDG_CONFIG_HOME/user-dirs.locale ./.config

# Configs in /etc
mkdir -p ./etc
cp -r /etc/ly ./etc

