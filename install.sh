#!/bin/bash

set -ex

# Tmux

# Create symlincs for tmux configuration
rm -rf ~/.tmux.conf
ln -s $(pwd)/tmux/.tmux.conf ~/.tmux.conf

# Zsh

# Delete zsh and oh-my-zsh configuration files
rm -rf ~/.oh-my-zsh ~/.zshrc

# Install oh-my-zsh
wget https://github.com/ohmyzsh/ohmyzsh/raw/master/tools/install.sh -O - | zsh || true

# Install autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

rm -rf ~/.zshrc

# Create symlinks for zsh configuration
ln -s $(pwd)/zsh/.zshrc ~/.zshrc
ln -s $(pwd)/zsh/themes/x.zsh-theme ~/.oh-my-zsh/themes

# Vim

# Delete old vim configuration
rm -rf ~/.vim

# Create symlinks for vim
ln -s $(pwd)/vim/.vimrc ~/.vimrc
ln -s $(pwd)/vim/coc-config.json ~/.vim/coc-config.json

# Run zsh
zsh
