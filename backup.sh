#!/bin/bash
# Script to backup Dotfiles

# Profiles
# UNUSED: cp ~/.profile ~/Sync/Code/Dotfiles/bash/.profile
cp ~/.zshrc ~/Sync/Code/Dotfiles/zsh/.zshrc

# SSH
cp -r ~/.ssh/* ~/Sync/Code/Dotfiles/ssh/

# Message of the day
cp /etc/motd ~/Sync/Code/Dotfiles/bash/motd

# Git
cp ~/.gitignore ~/Sync/Code/Dotfiles/git/.gitignore

# Vim
cp ~/.vimrc  ~/Sync/Code/Dotfiles/vim/.vimrc
cp -r ~/.vim/* ~/Sync/Code/Dotfiles/vim/.vim/