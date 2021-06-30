#!/bin/bash

ln -sf $HOME/dotfiles/vim/vimrc $HOME/.vimrc
ln -sf $HOME/dotfiles/vim/ $HOME/.vim

vim +PlugInstall +q +q &> /dev/null &
