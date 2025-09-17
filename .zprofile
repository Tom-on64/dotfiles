#!/bin/zsh
# Environment variables for zsh
# Zsh config in ~/.config/zsh

# Default programs
export EDITOR="vim"
export TERM="alacritty"
export TERMINAL=$TERM
export MUSPLAYER="vlc"
export BROWSER="firefox"
export LESS="R --use-color -Dd+r -Du+b"
export MANPAGER="less -$LESS"

# Locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# XDG base dir spec
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# Bootstrap zsh config to 
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# History files
export HISTFILE="$XDG_CACHE_HOME/zsh_history"
export LESSHISTFILE="$XDG_CACHE_HOME/less_history"
export PYTHON_HISTORY="$XDG_DATA_HOME/python/history"

# Add scripts to PATH
export PATH="$PATH:$XDG_CONFIG_HOME/scripts"

# Stuff in XDG_CONFIG_HOME
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export XPROFILE="$XDG_CONFIG_HOME/x11/xprofile"
export XRESOURCES="$XDG_CONFIG_HOME/x11/xresources"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
export _JAVA_AWT_WM_NONREPARENTING=1
export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"
export SVN_CONFIG_DIR=$XDG_CONFIG_HOME/subversion
export WAKATIME_HOME=$XDG_CONFIG_HOME
export PARALLEL_HOME=$XDG_CONFIG_HOME/parallel
export FEHBG_PATH=$XDG_CONFIG_HOME/feh/fehbg

# Stuff in XDG_DATA_HOME
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export GOBIN="$GOPATH/bin"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export WINEPREFIX="$XDG_DATA_HOME/wine"
export DOTNET_CLI_HOME=$XDG_DATA_HOME/dotnet
export JAVA_TOOL_OPTIONS="-Duser.home=$XDG_DATA_HOME/java"

# Stuff in XDG_CACHE_HOME
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export ZSH_COMPDUMP=$XDG_CACHE_HOME/zsh/zcompdump-$HOST

# Fuzzy find
export FZF_DEFAULT_OPTS="--style minimal --color 16 --layout reverse --height 30% --preview='head {}'"
export FZF_CTRL_R_OPTS="--style minimal --color 16 --info inline --no-sort --no-preview"

