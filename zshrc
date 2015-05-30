# Zsh configures
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"
DISABLE_CORRECTION="true"
export EDITOR=vim

export LC_ALL="en_NZ.UTF-8"
# Enable some of the oh-my-zsh.sh plugins
plugins=(gem git git-hubflow sublime rails rvm ruby) 

source $ZSH/oh-my-zsh.sh

# For OSX
if [[ "$(uname)" == 'Darwin' ]]; then
  echo "OSX mode"
else
  echo "Linux mode"
  alias o='nautilus'
  alias open='firefox'
  alias ack='ack-grep'
fi

# Alias
alias ll='ls -al'
alias l='ls -1'

alias vi='vim'
alias v='vim .'
alias g='gvim .'
alias tmux="TERM=screen-256color-bce tmux"

alias zc='vi ~/.zshrc'
alias vc='vi ~/.vimrc'
alias vd='cd ~/.vim'
