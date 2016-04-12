#!/bin/sh

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  echo "Installing Howebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
