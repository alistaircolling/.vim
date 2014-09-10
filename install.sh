#!/bin/bash

cd ~
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
mkdir ~/.vim/backup
git submodule init
git submodule update
