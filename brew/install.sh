#!/usr/bin/env bash

# Abort on error
set -e

echo "Checking if Homebrew is already installed..."; 

# Checks if Homebrew is installed
# Credit: https://gist.github.com/codeinthehole/26b37efa67041e1307db
if test ! $(which brew); then
  echo "Installing Homebrew...";
  yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo "Homebrew is already installed...";
fi

# Install the essential brews
brew install git
brew install node
brew install yarn
brew install zsh
#brew install neovim
brew install vim
brew install tmux
brew install zoxide
brew install fzf # fuzzy finder for zoxide

# Install essential casks
# brew install --cask iterm2
brew install --cask google-chrome
brew install --cask firefox
brew install --cask postman
brew install --cask karabiner-elements
brew install --cask raycast
brew install --cask notion
brew install --cask zoom
brew install --cask slack
brew install --cask bitwarden
brew install --cask 1password
brew install --cask visual-studio-code
brew install --cask rectangle
brew install --cask beeper
brew install --cask alacritty
brew install --cask spotify

# Update and Upgrade
echo "Updating and upgrading Homebrew..."; echo;
yes | brew update
yes | brew upgrade

# Remove outdated versions from the cellar
brew cleanup