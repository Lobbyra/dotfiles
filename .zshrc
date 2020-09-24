# Path to your oh-my-zsh installation.
export ZSH="/Users/jecaudal/.oh-my-zsh"

ZSH_THEME="sunrise"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

###########CUSTOM AREA START###############"

alias kub="kubectl"
alias kubg="kubectl get"
alias kubd="kubectl delete"
alias kuba="kubectl apply"

#### STDHEADER AREA ###

MAIL="jecaudal@student.42.fr"
USER=Lobbyra

export MAIL
export USER

#### STDHEADER AREA ###

alias v="vim"
alias libft="cd ~/code/libft"
alias python="python3"

#### ZSH START ###

cd ~/code

###########CUSTOM AREA END###############"

export PATH=$HOME/.brew/bin:$PATH
alias norminette="~/.norminette/norminette.rb"
alias py="python3"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

alias gccW="gcc -Wall -Wextra -Werror"
alias gccWe="gcc -Wall -Wextra"