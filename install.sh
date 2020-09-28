#!/bin/bash

backup="~/.vim_backup"
mkdir $backup
cp ~/.vimrc $backup/.vimrc

cp ~/.vim $backup/.vim

mv ./.vimrc ~/

mv ./.vim/coc.vim ~/.vim/
mv ./.vim/coc-settings.json ~/.vim/
mv ./.vim/vim-go.vim ~/.vim/
