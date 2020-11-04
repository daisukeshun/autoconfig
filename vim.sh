#!/bin/bash
echo "this programm must run with common user (NOT ROOT!)"

cd ~/
git clone https://github.com/daisukeshun/dotfiles.git

cp -r dotfiles/* ./
mv vim/* ./.vim/
rmdir vim
rm -rf dotfiles LICENSE README.md

cd ~/.vim/bundle
git clone https://github.com/tpope/vim-fugitive
git clone https://github.com/ycm-core/YouCompleteMe.git
git clone https://github.com/beyondmarc/opengl.vim

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 install.py --clangd-completer

git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim

echo "All works fine"
