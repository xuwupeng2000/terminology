#!/usr/bin/env bash

echo "\033[0;34mCloning Vim Config...\033[0m"
hash git >/dev/null && /usr/bin/env git clone https://github.com/xuwupeng2000/.vim.git ~/.vim || {
  echo "git not installed"
  exit
}
cp ~/.vim/vimrc ~/.vimrc 
