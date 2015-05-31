#!/usr/bin/bash

git submodule init
git submodule update

folder=$(pwd)
echo "Current Folder: $folder"
echo "$folder/vimrc"

ln -sf "$folder" ~/.vim
ln -sf "$folder/vimrc" ~/.vimrc
ln -sf "$folder/gitconfig" ~/.gitconfig
ln -sf "$folder/tmux.conf" ~/.tmux.conf

# Zsh
ln -sf "$folder/myzsh" ~/.myzsh
ln -sf "$folder/zshrc" ~/.zshrc

# Ruby
rm -rf ~/.rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
