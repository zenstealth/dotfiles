#!/bin/bash
# Script to backup Dotfiles

# Profiles
# UNUSED: cp ~/.profile ~/Sync/Code/Dotfiles/bash/.profile
cp ~/.zshrc ~/Sync/Tech/Code/Dotfiles/zsh/.zshrc

# SSH
cp -r ~/.ssh/* ~/Sync/Tech/Code/Dotfiles/ssh/

# Message of the day
cp /etc/motd ~/Sync/Tech/Code/Dotfiles/bash/motd

# Git
cp ~/.gitignore ~/Sync/Tech/Code/Dotfiles/git/.gitignore

# Vim
cp ~/.vimrc  ~/Sync/Tech/Code/Dotfiles/vim/.vimrc
cp -r ~/.vim/* ~/Sync/Tech/Code/Dotfiles/vim/.vim/