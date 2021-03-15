#!/bin/bash

backup="$HOME/.vim_backup"
mkdir $backup
cp $HOME/.vimrc $backup/.vimrc

cp $HOME/.vim $backup/.vim

cp ./.vimrc $HOME/

cp ./.vim/coc.vim $HOME/.vim/
cp ./.vim/coc-settings.json $HOME/.vim/
cp ./.vim/vim-go.vim $HOME/.vim/
