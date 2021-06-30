#!/bin/bash

mkdir -p $HOME/.config/ 2> /dev/null
rm -rf $HOME/.config/kitty

ln -s $HOME/dotfiles/kitty $HOME/.config/kitty
