#!/usr/bin/env bash

if [ "$(uname)" != "Darwin" ]; then
    exit
fi

if ! which brew &> /dev/null; then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

echo "Installing Brew packages"
brew install \
    ack \
    bash \
    bash-completion \
    coreutils \
    curl \
    ffmpeg \
    findutils \
    gibo \
    grc \
    imagemagick \
    lynx \
    mutt \
    the_silver_searcher \
    tmux \
    tree \
    unrar \
    watch \
    wget \
    yajl \
    zsh \
    caskroom/cask/brew-cask \

# GUI applications

brew cask install \
    bittorrent-sync \
    colloquy \
    firefox \
    google-chrome \
    hermes \
    hipchat \
    iterm2 \
    lilypond \
    seil \
    transmit \

# Turn off "Play feedback when volume is changed"
defaults write -g "com.apple.sound.beep.feedback" -int 0

# Restart so that changes take effect
killall -HUP SystemUIServer

