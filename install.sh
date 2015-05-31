#!/usr/bin/bash

git submodule init
git submodule update

ln -sf ./vimrc ~/.vimrc
ln -sf ./gitconfig ~/.gitconfig
ln -sf ./tmux.conf ~/.tmux.conf

# Zsh
ln -sf ./myzsh ~/.myzsh
ln -sf ./zshrc ~/.zshrc

# Ruby
rm -rf ~/.rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
