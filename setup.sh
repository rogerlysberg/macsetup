#!/bin/sh

sudo xcodebuild -license

echo "Installing Howebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

