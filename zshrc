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
  source ~/.rvm/scripts/rvm
else
  echo "Linux mode"
  source ~/.rvm/scripts/rvm
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

alias fig='cd ~/projects/figured'
alias gitt='~/projects/figured/scripts/gitt'

alias gbr="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))' |tail -n 15"
function gbg() { git branch |grep "$@" ;}
