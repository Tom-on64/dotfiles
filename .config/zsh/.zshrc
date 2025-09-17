export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bira"
HIST_STAMPS="dd/mm/yyyy"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$XDG_CACHE_HOME/zsh_history"
HISTCONTROL=ignoreboth

# Setup fzf
source <(fzf --zsh)

# Aliases
alias dir='ls -lah'
alias del='rm -fr'
alias ren='mv -r'
alias cls='clear'
alias gst='echo -e "\e[36mGit status:"; git status -s'
alias gcm='git commit -m'
alias df='df -h'
alias ':q'='exit'
alias bird-from-egypt='echo -e "\xf0\x93\x85\xb1"'
alias dosbox='dosbox -conf ~/.config/dosbox/dosbox.conf'

