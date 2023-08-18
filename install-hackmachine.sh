#!/bin/bash

# Exit if any command fail
set -e

clear

echo "
###########################################################################################################################
#  __  __     ______     ______     __  __     __    __     ______     ______     __  __     __     __   __     ______    #
# /\ \_\ \   /\  __ \   /\  ___\   /\ \/ /    /\ \"-./  \   /\  __ \   /\  ___\   /\ \_\ \   /\ \   /\ \"-.\ \   /\  ___\   #
# \ \  __ \  \ \  __ \  \ \ \____  \ \  _\"-.  \ \ \-./\ \  \ \  __ \  \ \ \____  \ \  __ \  \ \ \  \ \ \-.  \  \ \  __\   #
#  \ \_\ \_\  \ \_\ \_\  \ \_____\  \ \_\ \_\  \ \_\ \ \_\  \ \_\ \_\  \ \_____\  \ \_\ \_\  \ \_\  \ \_\ \"\_\  \ \_____\ #
#   \/_/\/_/   \/_/\/_/   \/_____/   \/_/\/_/   \/_/  \/_/   \/_/\/_/   \/_____/   \/_/\/_/   \/_/   \/_/ \/_/   \/_____/ #
#                                                                                                                         #
###########################################################################################################################
"

sudo apt -qqq update

unset toInstall

# Installing nmap
toInstall="nmap"
sudo apt-get install -y -qqq > /dev/null $toInstall && printf "✅ ${toInstall}\n"

# Installing dirb
toInstall="dirb"
sudo apt-get install -y -qqq > /dev/null $toInstall && printf "✅ ${toInstall}\n"

# Installing gobuster
toInstall="gobuster"
sudo apt-get install -y -qqq > /dev/null $toInstall && printf "✅ ${toInstall}\n"

# Installing ffuf
toInstall="ffuf"
wget -q https://github.com/ffuf/ffuf/releases/download/v2.0.0/ffuf_2.0.0_linux_amd64.tar.gz -O /tmp/ffuf.tar.gz
tar -zxf /tmp/ffuf.tar.gz -C /tmp
sudo cp /tmp/ffuf /usr/bin/ffuf && printf "✅ ${toInstall}\n"

# Installing jq
toInstall="jq"
sudo apt-get install -y -qqq > /dev/null $toInstall && printf "✅ ${toInstall}\n"

# Installing vim
toInstall="vim"
sudo apt-get install -y -qqq > /dev/null $toInstall && printf "✅ ${toInstall}\n"

# Installing btop
toInstall="btop"
sudo apt-get install -y -qqq > /dev/null $toInstall && printf "✅ ${toInstall}\n"

# Installing tree
toInstall="tree"
sudo apt-get install -y -qqq > /dev/null $toInstall && printf "✅ ${toInstall}\n"

# Installing hydra
toInstall="hydra"
sudo apt-get install -y -qqq > /dev/null $toInstall && printf "✅ ${toInstall}\n"

# Installing gdb
toInstall="gdb"
sudo apt-get install -y -qqq > /dev/null $toInstall && printf "✅ ${toInstall}\n"

# Installing john
toInstall="john"
sudo apt-get install -y -qqq > /dev/null $toInstall && printf "✅ ${toInstall}\n"

# Installing mysql-client
toInstall="mysql-client"
sudo apt-get install -y -qqq > /dev/null $toInstall && printf "✅ ${toInstall}\n"

# Installing urlencode
toInstall="gridsite-clients"
sudo apt-get install -y -qqq > /dev/null $toInstall && printf "✅ ${toInstall}\n"

# Installing smbclient
toInstall="smbclient"
sudo apt-get install -y -qqq > /dev/null $toInstall && printf "✅ ${toInstall}\n"

# Installing wpscan
toInstall="wpscan"
sudo apt-get install -y -qqq ruby-full build-essential libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev  libgmp-dev zlib1g-dev
sudo gem install -q wpscan && printf "✅ ${toInstall}\n"

# Installing gcc & clang
toInstall='gcc & clang'
sudo apt-get install -y -qqq > /dev/null gcc clang && printf "✅ ${toInstall}\n"

# Installing nodejs
toInstall='nodejs'
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y -qqq > /dev/null $toInstall && printf "✅ ${toInstall}\n"

# Installing golang-go
toInstall='golang-go'
sudo apt-get install -y -qqq > /dev/null $toInstall && printf "✅ ${toInstall}\n"

# Info metasploit
if [ ! -f metasploit-latest-linux-x64-installer.run ]; then
    wget -q http://downloads.metasploit.com/data/releases/metasploit-latest-linux-x64-installer.run
fi
echo "🤖 I downloaded you the installation script of Metasploit, i just have to run it to install it if you want !"
chmod +x metasploit-latest-linux-x64-installer.run

# Installing docker
toInstall='docker'
printf "🤖 Install ${toInstall}? (y/n) : "
read askSetup
if [[ "${askSetup}" == "y" ]]; then
    printf "📦 Installing Docker...\n"
    sleep 3 # Interactiveness
    # FROM : https://docs.docker.com/engine/install/ubuntu/
    sudo apt-get update -qqq
    sudo apt-get install -y -qqq ca-certificates curl gnupg
    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    sudo chmod a+r /etc/apt/keyrings/docker.gpg
    echo \
    "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update -qqq
    sudo apt-get install -y -qqq docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
    printf "✅ Docker installed. Run 'sudo docker run hello-world' to test it !"
elif [[ "${askSetup}" == "n" ]]; then
    printf "➡️ Ok, ${toInstall} setup is skipped\n"
else
    printf "🚫 Wrong input. Leaving script.\n"
    exit 1
fi
