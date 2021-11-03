#!/bin/bash

git clone https://github.com/joshdick/onedark.vim ~/dotfiles/vim/plugged/onedark.vim

ln -sf $HOME/dotfiles/vim/vimrc $HOME/.vimrc
ln -sf $HOME/dotfiles/vim $HOME/.vim

vim +PlugInstall +q +q &> /dev/null &
