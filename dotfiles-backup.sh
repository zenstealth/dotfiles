#!/bin/bash
# Script to backup Dotfiles

# ZSH
cp ~/.zshrc ~/Code/Dotfiles/zsh/ada-t440p.zshrc

# SSH
cp -r ~/.ssh/* ~/Code/Dotfiles/ssh/

# Git
cp ~/.gitignore ~/Code/Dotfiles/git/.gitignore

# Vim
cp ~/.vimrc  ~/Code/Dotfiles/vim/.vimrc
cp -r ~/.vim/* ~/Code/Dotfiles/vim/.vim/
