#!/bin/bash

echo "Install tools"
brew tap homebrew/cask-fontss

brew install java
brew install vim
brew install zsh
brew install zsh-completions
brew install zsh-syntax-highlighting
brew cask install font-sourcecodepro-nerd-font
brew cask install iterm2

brew cask install docker
brew cask install visual-studio-code
brew cask install jetbrains-toolbox
brew cask install intellij-idea
brew cask install postman

brew cask install spotify
brew cask install notion

brew cask install cheatsheet

echo "Install package management"
brew install node

echo "Install commands"
brew install tldr
brew install jq
brew install truncate
brew install telnet
brew install bandwhich
brew install ack
brew install fzf
brew install bat
brew install htop
