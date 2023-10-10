#!/bin/bash

# This script is for isntalling my local dev environment/tools, mostly for github
# codespaces, but could be useful when moving to a new machine too.
#
# Codespaces home directory is /home/vscode/

sudo apt update

# install kitty-terminfo so ssh from kitty works correctly
sudo apt install kitty-terminfo

# install homebrew to manage nvim package
sudo apt install build-essential # install dependencies
# install homebrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
# Add homebrew to path and .bashrc
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> ~/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew upgrade
# homebrew reccomends installing gcc
brew install gcc

# install neovim
brew install neovim
# alias vim to nvim
(echo; echo 'alias vim="nvim"') >> ~/.bashrc

# install kitty terminal
#brew install --cask kitty

# copy config files for neovim
cp -r .config/nvim ~/.config/nvim

# set git config settings
git config --global commit.template $PWD/git/commit_template.txt
git config --global core.editor nvim
