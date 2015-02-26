#!/usr/bin/env bash

command -v apt-get || exit

echo "Installing Ubuntu apt-get packages"

# For mosh
sudo apt-get install python-software-properties
sudo add-apt-repository -y ppa:keithw/mosh

# For neovim
sudo add-apt-repository -y ppa:rudenko/neovim 

sudo apt-get update
sudo apt-get install --assume-yes \
    ca-certificates \
    curl \
    git \
    locate \
    lynx \
    mosh \
    neovim \
    php5 \
    php5-cli \
    python-software-properties \
    mutt \
    offlineimap \
    tree \
    vim \
    vim-gnome \
    weechat \
    zsh

UBUNTU_RELEASE_NUMBER=$(lsb_release -r | grep -oE "[0-9\.]+$")
echo '------------'
echo UBUNTU_RELEASE_NUMBER
echo '------------'
if ( $UBUNTU_RELEASE_NUMBER < "13.01" )
if (( $(echo "$UBUNTU_RELEASE_NUMBER < 13.01" | bc -l) ));
then
    echo "Installing ag from ppa"
    sudo add-apt-repository ppa:pgolm/the-silver-searcher
    sudo apt-get update
    sudo apt-get install the-silver-searcher
else
    echo "Installing ag from apt-get"
    sudo apt-get install silversearcher-ag
fi
