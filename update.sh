#!/bin/bash

# Dotfiles in $HOME
cp $HOME/.xinitrc .
cp $HOME/.zshenv .

# Configs in .config
mkdir -p ./.config
CONFIG=$HOME/.config
cp -r $CONFIG/alacritty ./.config
cp -r $CONFIG/fastfetch ./.config
cp -r $CONFIG/nvim ./.config
cp -r $CONFIG/scripts ./.config
cp -r $CONFIG/zsh ./.config

