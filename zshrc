# Zsh configures
ZSH=$HOME/.myzsh
ZSH_THEME="apple"
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
alias v='vim .'
alias g='gvim .'
alias tmux="TERM=screen-256color-bce tmux"

alias zc='vi ~/.zshrc'
alias vc='vi ~/.vimrc'
alias vd='cd ~/.vim'

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
