#!/usr/bin/bash

git submodule init
git submodule update

ln -s ./vimrc ~/.vimrc
ln -s ./gitconfig ~/.gitconfig
ln -s ./tmux.conf ~/.tmux.conf

# Zsh
ln -s ./myzsh ~/.myzsh
ln -s ./zshrc ~/.zshrc

# Ruby
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
