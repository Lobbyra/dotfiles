#!/bin/bash

ln -sf $HOME/dotfiles/i3 $HOME/.config/i3 2> /dev/null

git clone https://github.com/meskarune/i3lock-fancy.git $HOME/dotfiles/i3/

sudo make -C $HOME/dotfiles/i3/i3lock-fancy install

chmod +x $HOME/dotfiles/i3/bar.sh
