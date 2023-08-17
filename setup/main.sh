#!/bin/bash

# Exit if any command fail
set -e

clear

echo "
██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝"

printf "⬆️ Updating your packages...\n"
sudo apt -qqq update
printf "✅ Updating your packages.\n\n"

printf "⬆️ Upgrading your packages...\n"
sudo apt -qqq upgrade
printf "✅ Upgrading your packages.\n\n"

install_pack () {
	for var in "$@"
	do
		sudo apt-get install -qqq > /dev/null $var && printf "✅ ${var} "
	done

}

printf "🎁 Installing basic packages...\n"
install_pack vim zsh tmux htop tree
printf "\n✅ All basic packages installed.\n\n"

setup_soft () {
	for var in "$@"
	do
        printf "Setup ${var}? (y/n) : "
        read askSetup
        if [[ "${askSetup}" == "y" ]]; then
            printf "📦 Setting it up...\n"
            bash ~/dotfiles/${var}/setup.sh > /dev/null && printf "✅ ${var} "
        elif [[ "${askSetup}" == "n" ]]; then
            printf "➡️ Ok, ${var} setup is skipped\n"
        else
            printf "🚫 Wrong input. Leaving script.\n"
            exit 1
        fi
	done
}

printf "🔧 Setup your softwares.\n"
setup_soft zsh tmux vim

printf "\n✅ All softwares are setup.\n"

printf "\n📃 Don't forget to change your default shell\n"
printf "📃 man chsh"

printf "✅ All is ok, you can reboot ! ✅\n"
