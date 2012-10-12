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
plugins=(git brew osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/MacGPG2/bin

# ------------------------------------------------------------------------------------------
# Aliases
# ----------------------------------------------------------------------------------------

# -----------------------------------------------------------
# SHORTCUTS
# -----------------------------------------------------------

# ZSH
alias zshconfig="kod ~/.zshrc"

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
alias websites="cd ~/Dropbox/Code/Websites"

# -----------------------------------------------------------
# DROPBOX
# -----------------------------------------------------------

# Jekyll Shortcuts
alias jgen="jekyll --no-auto"
alias jstart="jekyll --server --auto"
alias jopen="open http://localhost:4000/"
alias jdeploy="./deploy.sh"
alias publish="gp && jdeploy; growl -n ZENSTEALTH.COM -m 'Site sync complete.'"

# Websites
alias websites="cd ~/Dropbox/Code/Websites/"
alias zen="cd ~/Dropbox/Code/Websites/Personal/zenstealth.com"
alias zenstart="zen && kod . && open http://zenstealth.dev/ && jekyll"
alias club="cd ~/Dropbox/Code/Websites/Personal/club-otaku.zenstealth.com"

# Dotfiles
alias dot="cd ~/Dropbox/Code/Dotfiles"
alias dotpack="dot && ./backup.sh"

# -----------------------------------------------------------
# APPS
# -----------------------------------------------------------

# Application Shortcuts
alias te="open -e" #Opens file in TextEdit
alias tfinder="open /Applications/TotalFinder.app" #Opens TotalFinder if Finder is killed
alias monitor="open /Applications/Utilities/Activity\ Monitor.app" #Opens Activity Monitor

# Growl Notifications
alias growl="growlnotify -m"

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
# RSYNC BACKUPS
# -----------------------------------------------------------

alias rmovies="rsync -rtuvanh ~/Movies/ /Volumes/Storage/Movies/"
alias rmovies-su="rsync -rtuvah ~/Movies/ /Volumes/Storage/Movies/"

alias rtv="rsync -rtuvanh ~/T.V.\ Shows/ /Volumes/Storage/T.V.\ Shows/"
alias rtv-su="rsync -rtuvah ~/T.V.\ Shows/ /Volumes/Storage/T.V.\ Shows/"

alias rmusic="rsync -rtvuanh --delete ~/Music/iTunes/ /Volumes/Storage/Music/Music\ Backup/iTunes/"
alias rmusic-su="rsync -rtvuah --delete ~/Music/iTunes/ /Volumes/Storage/Music/Music\ Backup/iTunes/"

alias rphotos="rsync -rtvuanh --delete ~/Dropbox/Photos/ /Volumes/Storage/Photos/Dropbox\ Photos/"
alias rphotos-su="rsync -rtvuah --delete ~/Dropbox/Photos/ /Volumes/Storage/Photos/Dropbox\ Photos/"

alias rkindle1="rsync -rtvuanh --delete /Volumes/Kindle/ ~/Books/Kindle\ Backup/"
alias rkindle1-su="rsync -rtvuah --delete /Volumes/Kindle/ ~/Books/Kindle\ Backup/"

alias rkindle2="rsync -rtvuanh --delete ~/Books/Kindle\ Backup/ /Volumes/Storage/Books/Kindle\ Backup/"
alias rkindle2-su="rsync -rtvuah --delete ~/Books/Kindle\ Backup/ /Volumes/Storage/Books/Kindle\ Backup/"

# -----------------------------------------------------------
# UTILITIES AND FUN STUFF
# -----------------------------------------------------------

# DELETE, DELETE, DELETE
alias rm="rm -i" #Asks for confirmation when using rm
alias trash="rmtrash" #Moves file to Trash Bin instead of obliterating it

# Useful Utilities
alias clearcache="dscacheutil -flushcache"
alias bootup="cat /etc/motd"
alias pwdcopy="pwd | pbcopy"

alias h="history" #History Shortcut
alias hc="rm -f .zsh_history" #Clears history

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
