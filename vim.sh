#!/bin/bash
echo "this programm must run with common user (NOT ROOT!)"

sudo apt install git -y
sudo apt install vim -y
sudo apt install cmake -y
sudo apt install python3-dev -y
sudo apt install build-essential -y

cd ~/
git clone https://github.com/daisukeshun/dotfiles.git

cp -r dotfiles/* ./
mv ./vim ./.vim
rm -rf dotfiles LICENSE README.md

cd .vim/bundle
git clone https://github.com/tpope/vim-fugitive
git clone https://github.com/ycm-core/YouCompleteMe.git
git clone https://github.com/beyondmarc/opengl.vim

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 install.py --clangd-completer

echo "All works fine"
