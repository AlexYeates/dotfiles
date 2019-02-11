#!/usr/bin/env bash

# Install homebrew if it is not installed
which brew 1>&/dev/null
if [ ! "$?" -eq 0 ] ; then
	echo "Homebrew not installed. Attempting to install Homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	if [ ! "$?" -eq 0 ] ; then
		echo "Something went wrong. Exiting..." && exit 1
	fi
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Core Utils
brew install coreutils

# ---------------------------------------------
# Programming Languages and Frameworks
# ---------------------------------------------

# NodeJS 
brew install node

# Install NPM again as Homebrew does not always do it correctly
sudo npm cache clean -f

sudo npm install -g n

sudo n stable

# ---------------------------------------------
# Database Systems 
# ---------------------------------------------

# MongoDB 
brew install mongo

# ---------------------------------------------
# Useful tools
# ---------------------------------------------

# Zsh 
brew install zsh

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Visual Studio Code
brew cask install visual-studio-code

# Firefox
brew cask install firefox

# Slack
brew cask install slack

# Chrome
brew cask install google-chrome

# ---------------------------------------------
# CLI Tools
# ---------------------------------------------

# Gulp & Parcel
npm install --g gulp-cli parcel-bundler

# Remove outdated versions from the cellar
brew cleanup
