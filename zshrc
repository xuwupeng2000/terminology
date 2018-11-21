# Zsh configures
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"
DISABLE_CORRECTION="true"
source $ZSH/oh-my-zsh.sh

export EDITOR=vim
export LC_ALL="en_US.UTF-8"


# Alias
alias ll='ls -al'
alias l='ls -1'

alias vi='nvim'
alias g='gvim'
alias v='nvim'

alias rspec='bundle exec rspec'
alias cap='bundle exec cap'

alias zc='vi ~/.zshrc'
alias vc='vi ~/.vimrc'
alias vd='cd ~/.vim'

alias dcu='docker-compose up'
alias dcs='docker-compose stop'

alias dcl='docker-compose logs --tail=all app'
alias dce='docker-compose exec app'
alias dcb='docker-compose exec app /bin/bash'
alias dcr='docker-compose run --rm app'

alias dcjest='docker-compose exec app yarn jest'
alias dcrspec='docker-compose exec app env RAILS_ENV=test bundle exec rspec'
alias dctest='docker-compose exec app env RAILS_ENV=test bundle exec rake test'

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"

eval "$(rbenv init -)"

export PATH="/usr/local/bin:$PATH"
export WEB_CONCURRENCY=1
export ANDROID_HOME="/Users/pengwu/Library/Android/sdk"
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
export DATABASE_PASSWORD=reallyStrongPwd123

# Enable some of the oh-my-zsh.sh plugins
plugins=(sublime)
