#!/bin/bash
# Script to backup dotfiles

# Profiles
cp ~/.profile ~/Dropbox/Code/dotfiles/bash/.profile
cp ~/.zshrc ~/Dropbox/Code/dotfiles/zsh/.zshrc

# SSH
cp -r ~/.ssh/* ~/Dropbox/Code/dotfiles/ssh/

# Message of the day
cp /etc/motd ~/Dropbox/Code/dotfiles/bash/motd
# Vim
cp ~/.vimrc  ~/Dropbox/Code/dotfiles/vim/.vimrc
cp -r ~/.vim/* ~/Dropbox/Code/dotfiles/vim/.vim/