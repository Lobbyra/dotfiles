#!/bin/bash

clear

sudo add-apt-repository -y ppa:kgilmer/speed-ricer &> /dev/null

printf "⬆️  Updating you packages...\n"
sudo apt -qqq update
printf "✅ Updating you packages.\n\n"

install_pack () {
	for var in "$@"
	do
		sudo apt-get install -qqq > /dev/null $var && printf "✅ ${var} "
	done

}

printf "🎁 Downloading all packages needed...\n"
install_pack vim zsh tmux valgrind clang python3 python3-pip \
             htop tree i3 i3-gaps
printf "\n✅ All packages installed.\n\n"

setup_soft () {
	for var in "$@"
	do
		bash ~/dotfiles/${var}/setup.sh > /dev/null && printf "✅ ${var} "
	done
}

printf "🔧 Setup you softwares.\n"
setup_soft i3 zsh tmux vim

set -x

sudo chsh -s $(whereis zsh | cut -d " " -f 2)

printf "\n✅ All softwares are setup.\n"

printf "✅ All is ok, you can reboot ! ✅"
