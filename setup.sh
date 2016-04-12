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

# A place to store git repos
mkdir $HOME/Git
git clone https://github.com/rogerlysberg/macsetup.git $HOME/Git/macsetup
# Incase we already have the git repo, try to update it
cd $HOME/Git/macsetup
git pull

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/lumen-installer

# Create a Sites directory
# This is a default directory for OS X user accounts but doesn't comes pre-installed
mkdir $HOME/Sites
