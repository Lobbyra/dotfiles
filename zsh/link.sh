#!/bin/bash

git clone https://github.com/brymck/print-alias.git
git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/dotfiles/zsh/oh-my-zsh

ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
