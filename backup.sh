#!/bin/bash
# Script to backup dotfiles

cp ~/.profile ~/Dropbox/Code/dotfiles/bash/.profile
cp ~/.zshrc ~/Dropbox/Code/dotfiles/zsh/.zshrc

cp /etc/motd ~/Dropbox/Code/dotfiles/bash/motd

cp ~/.vimrc  ~/Dropbox/Code/dotfiles/vim/.vimrc
cp -r ~/.vim/* ~/Dropbox/Code/dotfiles/vim/.vim/