#!/bin/bash

clear

echo "
██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝"

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
install_pack vim zsh tmux htop tree
printf "\n✅ All packages installed.\n\n"

setup_soft () {
	for var in "$@"
	do
		bash ~/dotfiles/${var}/setup.sh > /dev/null && printf "✅ ${var} "
	done
}

printf "🔧 Setup your softwares.\n"
setup_soft zsh tmux vim

printf "\n✅ All softwares are setup.\n"

printf "\n📃 Don't forget to change your default shell\n"
printf "📃 sudo chsh -s /usr/bin/zsh\n"

printf "✅ All is ok, you can reboot ! ✅"
