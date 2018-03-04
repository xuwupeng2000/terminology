# Zsh configures
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"
DISABLE_CORRECTION="true"
source $ZSH/oh-my-zsh.sh

export EDITOR=vim
export LC_ALL="en_US.UTF-8"

# Enable some of the oh-my-zsh.sh plugins
plugins=(gem git git-hubflow rbenv)

# Alias
alias ll='ls -al'
alias l='ls -1'

alias vi='vim'
alias g='gvim'

alias zc='vi ~/.zshrc'
alias vc='vi ~/.vimrc'
alias vd='cd ~/.vim'

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:/usr/local/bin
eval "$(rbenv init -)"
export PATH="/usr/local/bin:$PATH"
