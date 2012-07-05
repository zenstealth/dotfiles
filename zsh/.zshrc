# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="nanotech"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/MacGPG2/bin

# ----------------------------------------------------------------------------------------------
# Aliases
# ----------------------------------------------------------------------------------------------

# -----------------------------------------------------------
# SHORTCUTS
# -----------------------------------------------------------

# Directory Movement
alias ..="cd .." #up one level
alias ...="cd ../.." #up two levels

# Main Directory Shortcuts
alias ~="cd ~" #Goes to home directory
alias home="cd ~" #Goes to home directory
alias desk="cd ~/Desktop" #Goes to the Desktop
alias down="cd ~/Downloads" #Goes to the Downloads folder
alias drop="cd ~/Dropbox" #Goes to the Dropbox folder
alias .ssh="cd ~/.ssh" #Goes to the SSH folder

# Code Directory Shortcuts
alias code="cd ~/Dropbox/Code" 
alias codep="cd ~/Dropbox/Code/Projects"

# -----------------------------------------------------------
# PROJECTS
# -----------------------------------------------------------

# ZENSTEALTH.COM
alias zen="cd ~/Dropbox/Code/Projects/zenstealth.com"
alias jgen="jekyll --no-auto"
alias jstart="jekyll --server --auto"
alias jopen="open http://localhost:4000/"
alias jdeploy="jekyll --no-auto && rsync -avz --delete _site/ nfsn-zen:/home/public"

# Other Projects
alias rhs="cd ~/Dropbox/Code/Projects/rhs"

# Dotfiles
alias dotfiles="cd ~/Dropbox/Code/dotfiles"
alias dotall="dot-profile | dot-zsh | dot-git | dot-motd | dot-vim"
alias dot-profile="cp ~/.profile ~/Dropbox/Code/dotfiles/bash/.profile"
alias dot-zsh="cp ~/.zshrc ~/Dropbox/Code/dotfiles/zsh/"
alias dot-git="cp ~/.gitignore_global ~/Dropbox/Code/dotfiles/git/.gitignore_global"
alias dot-motd="cp /etc/motd ~/Dropbox/Code/dotfiles/bash/motd"
alias dot-vim="cp ~/.vimrc  ~/Dropbox/Code/dotfiles/vim/.vimrc && cp -r ~/.vim/* ~/Dropbox/Code/dotfiles/vim/.vim/"

# -----------------------------------------------------------
# APPS
# -----------------------------------------------------------

# Application Shortcuts
alias te="open -e" #Opens file in TextEdit
alias tfinder="open /Applications/TotalFinder.app" #Opens TotalFinder if Finder is killed
alias monitor="open /Applications/Utilities/Activity\ Monitor.app" #Opens Activity Monitor

# -----------------------------------------------------------
# GIT
# -----------------------------------------------------------

# Git Shortcuts
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias glg='git lg'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'

# Git External Sites
alias github="open https://github.com" #Opens GitHub dashboard
alias github-zen="open https://github.com/zenstealth" #Opens my GitHub profile

# -----------------------------------------------------------
# SSH
# -----------------------------------------------------------

# SSH Tunnels
alias tn='ssh feral -p 22 -N -D localhost:8080'

# -----------------------------------------------------------
# UTILITIES AND FUN STUFF
# -----------------------------------------------------------

# Removal Confirmation
alias rm="rm -i" #Asks for confirmation when using rm

# Useful Utilities
alias clearcache="dscacheutil -flushcache"
alias bootup="cat /etc/motd"
alias pwdcopy="pwd | pbcopy"

alias h="history" #History Shortcut
alias hc="history -c" #Clears history

alias ip="curl icanhazip.com" #Gets Public IP from icanhazip.com
alias http="python -m SimpleHTTPServer" #Starts a simple HTTP server in current directory at http://localhost:8000/

# Fun Stuff
alias moo="fortune | cowsay -n"

# -----------------------------------------------------------
# MAC ONLY STUFF
# -----------------------------------------------------------

# Add spacer to the Dock
alias dock+="defaults write com.apple.dock persistent-apps -array-add '{ "tile-type" = "spacer-tile"; }' && killall Dock"

# Ejects any discs in the Superdrive
alias eject="drutil tray eject 0"