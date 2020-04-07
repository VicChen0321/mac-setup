#!/bin/bash

# Oh My ZSH
echo "Install Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Install plugins..."
# Auto suggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Change theme"
# Change theme
sed -i -e "s/robbyrussell/agnoster/g" ~/.zshrc

# Change plugin
sed -i -e "s/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g" ~/.zshrc

