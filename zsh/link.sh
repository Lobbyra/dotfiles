#!/bin/bash

rm -rf $HOME/dotfiles/zsh/print-alias
git clone https://github.com/brymck/print-alias.git \
          $HOME/dotfiles/zsh/print-alias

rm -rf $HOME/dotfiles/zsh/oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git \
          $HOME/dotfiles/zsh/oh-my-zsh

ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
