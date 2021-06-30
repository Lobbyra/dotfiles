#!/bin/bash

rm -rf $HOME/dotfiles/tmux/plugins/tpm/
git clone -q https://github.com/tmux-plugins/tpm.git \
             $HOME/dotfiles/tmux/plugins/tpm/

rm -rf $HOME/dotfiles/tmux/plugins/tmux-themepack/
git clone -q https://github.com/jimeh/tmux-themepack.git \
             $HOME/dotfiles/tmux/plugins/tmux-themepack/

rm -rf $HOME/dotfiles/tmux/plugins/tmux-sensible
git clone -q https://github.com/tmux-plugins/tmux-sensible.git \
             $HOME/dotfiles/tmux/plugins/tmux-sensible/

ln -sf ~/dotfiles/tmux/ ~/.tmux
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
