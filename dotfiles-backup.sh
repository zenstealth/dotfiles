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
cp ~/.atom/config.cson ~/Code/Dotfiles/atom/config.cson
cp ~/.atom/keymap.cson ~/Code/Dotfiles/atom/keymap.cson
cp ~/.atom/snippets.cson ~/Code/Dotfiles/atom/snippets.cson
cp ~/.atom/styles.less ~/Code/Dotfiles/atom/styles.less
apm list --installed --bare > ~/Code/Dotfiles/atom/packages.list
# apm install 'cat packages.list' -> to reinstall packages

# dconf (Guake configs and other stuff)
dconf dump / > ~/Code/Dotfiles/dconf/t440p.dconf
# to load
# dconf load / > ~/Code/Dotfiles/dconf/t440p.dconf
