#!/bin/bash
# Script to backup Dotfiles

# Profiles
cp ~/.profile ~/Dropbox/Code/Dotfiles/bash/.profile
cp ~/.zshrc ~/Dropbox/Code/Dotfiles/zsh/.zshrc

# SSH
cp -r ~/.ssh/* ~/Dropbox/Code/Dotfiles/ssh/

# Message of the day
cp /etc/motd ~/Dropbox/Code/Dotfiles/bash/motd

# Git
cp ~/.gitignore ~/Dropbox/Code/Dotfiles/git/.gitignore

# Vim
cp ~/.vimrc  ~/Dropbox/Code/Dotfiles/vim/.vimrc
cp -r ~/.vim/* ~/Dropbox/Code/Dotfiles/vim/.vim/