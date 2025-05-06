export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bira"
HIST_STAMPS="dd/mm/yyyy"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

# MS-DOS commands
alias dir='ls -lah'
alias del='rm -fr'
alias ren='mv -r'
alias cls='clear'

# Special
alias birdFromEgypt='echo -e "\xf0\x93\x85\xb1"'
alias gst='echo -e "\e[36mGit status:"; git status -s'
alias gcm='git commit -m'
alias exot='exit'
alias ':q'='exit'

