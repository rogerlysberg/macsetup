#!/bin/sh

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  echo "Installing Howebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install git
brew install git

# 
mkdir $HOME/Git
git clone https://github.com/rogerlysberg/macsetup.git $HOME/Git/macsetup.git

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
