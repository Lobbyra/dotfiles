# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="sunrise"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# --- ALIAS --- #

# Generals
alias v="vim"

# Kubernetes
alias kub="kubectl"
alias kubg="kubectl get"
alias kubd="kubectl delete"
alias kuba="kubectl apply"

# Python
alias py="python3"

# C
alias gccW="gcc -Wall -Wextra -Werror"
alias gccWe="gcc -Wall -Wextra"

# 42
alias norminette="~/.norminette/norminette.rb"

# --- STDHEADER AREA --- ###

MAIL="jecaudal@student.42.fr"
USER=Lobbyra

export MAIL
export USER

# --- ZSH START COMMANDS --- #

cd ~/code

