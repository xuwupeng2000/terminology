# Zsh configures
ZSH=$HOME/.myzsh
ZSH_THEME="gentoo"
DISABLE_CORRECTION="true"
source $ZSH/oh-my-zsh.sh

export EDITOR=vim
export LC_ALL="en_US.UTF-8"

# Enable some of the oh-my-zsh.sh plugins
plugins=(gem git git-hubflow sublime rails rbenv ruby)

# For OSX
if [[ "$(uname)" == 'Darwin' ]]; then
  echo "OSX mode"
  alias o='Open'
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
alias vd='cd ~/.vim/terminology'


# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
