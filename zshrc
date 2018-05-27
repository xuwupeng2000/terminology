# Zsh configures
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"
DISABLE_CORRECTION="true"
source $ZSH/oh-my-zsh.sh

export EDITOR=vim
export LC_ALL="en_US.UTF-8"

# Enable some of the oh-my-zsh.sh plugins
plugins=(gem git)

# Alias
alias ll='ls -al'
alias l='ls -1'

alias vi='vim'
alias g='gvim'

alias zc='vi ~/.zshrc'
alias vc='vi ~/.vimrc'
alias vd='cd ~/.vim'

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"

eval "$(rbenv init -)"

export PATH="/usr/local/bin:$PATH"
export WEB_CONCURRENCY=1
export ANDROID_HOME="/Users/pengwu/Library/Android/sdk"
