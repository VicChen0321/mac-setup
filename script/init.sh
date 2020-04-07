#!/bin/bash


if [ -x "$(command -v brew)" ]; then
    echo "✔️ Homebrew installed"
else
    echo "Installing homebrew now..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew tap caskroom/cask
fi;

echo "Setting up Git global configure"
echo "Enter your email with github account"
read -r email
echo "Enter your user name"
read -r username

# Configure git
echo "Intall and configure git."
brew install git
echo "Setting global git config with email $email and username $username"
git config --global user.email "$email"
git config --global user.name "$username"

# SSH Key
echo "Generating an SSH Key - this will be added to your agent for you"
ssh-keygen -t rsa -b 4096 -C "$email"
echo "Host *\n AddKeysToAgent yes\n UseKeychain yes\n IdentityFile ~/.ssh/id_rsa" | tee ~/.ssh/config
eval "$(ssh-agent -s)"
echo "Copying your SSH key to your clipboard"
pbcopy < ~/.ssh/id_rsa.pub
echo "Add the generated SSH key to your GitHub account. It has been copied to your clipboard"
echo "https://github.com/settings/keys"


sh mac_init.sh
sh brew_init.sh
sh zsh_init.sh
sh vim_init.sh