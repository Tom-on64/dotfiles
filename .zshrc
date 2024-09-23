# PowerLevel10K Enable
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Instalation path
export ZSH="$HOME/.oh-my-zsh"

# Config
ZSH_THEME="powerlevel10k/powerlevel10k"
HIST_STAMPS="dd/mm/yyyy"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias config='/usr/bin/git --git-dir=/Users/tomas/.dotfiles/ --work-tree=/Users/tomas'
alias birdFromEgypt='echo -e "\xf0\x93\x85\xb1"'
alias gst='echo -e "\e[36mGit status:"; git status -s'
alias cls='clear'

