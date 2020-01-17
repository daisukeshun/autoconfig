#!/bin/bash
sudo apt install git -y
sudo apt install vim -y
sudo apt install cmake -y
sudo apt install python3-dev -y

cd ~/
git clone https://github.com/daisukeshun/.vimrc-and-.vim.git

cp -r .vimrc-and-.vim/* ./
mv ./vim ./.vim
rm -rf .vimrc-and-.vim LICENSE README.md

cd .vim/bundle
git clone https://github.com/ycm-core/YouCompleteMe.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/beyondmarc/opengl.vim
git clone https://github.com/zeis/vim-kolor.git

cd ./YouCompleteMe
git submodule update --init --recursive
python3 install.py --clang-completer

echo "All works fine"
