#!/bin/bash

rm -fr ./.config
rm -f .xinitrc .zprofile

# Dotfiles in $HOME
cp $HOME/.xinitrc .
cp $HOME/.zprofile .

# Configs in .config
mkdir -p ./.config
cp -r $XDG_CONFIG_HOME/alacritty ./.config
cp -r $XDG_CONFIG_HOME/fastfetch ./.config
cp -r $XDG_CONFIG_HOME/nvim ./.config
cp -r $XDG_CONFIG_HOME/scripts ./.config
cp -r $XDG_CONFIG_HOME/zsh ./.config
cp -r $XDG_CONFIG_HOME/dunst ./.config
cp -r $XDG_CONFIG_HOME/picom ./.config
cp -r $XDG_CONFIG_HOME/x11 ./.config

