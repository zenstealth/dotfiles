#!/bin/bash
# Script to backup Dotfiles

# zsh
cp ~/.zshrc ~/Code/Dotfiles/zsh/ada-t440p.zshrc
cp ~/.oh-my-zsh/custom/aliases.zsh ~/Code/Dotfiles/zsh/aliases.zsh

# git
cp ~/.gitignore ~/Code/Dotfiles/git/.gitignore

# vim
cp ~/.vimrc  ~/Code/Dotfiles/vim/.vimrc
cp -r ~/.vim/* ~/Code/Dotfiles/vim/.vim/

# tmux
cp ~/.tmux.conf ~/Code/Dotfiles/tmux/.tmux.conf

# atom
apm list --installed --bare > ~/Code/Dotfiles/atom/packages.list
