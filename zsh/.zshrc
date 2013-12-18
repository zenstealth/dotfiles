# ------------------------------------------------------------------------------------------
# OH-MY-ZSH // MAXIMUM CONFIGURATION
# ------------------------------------------------------------------------------------------

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
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/MacGPG2/bin
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=${PATH}:/Users/zenstealth/Sync/Projects/Android/ADB

# ------------------------------------------------------------------------------------------
# ALIASES // THE MACHINE KNOWS YOU ARE READING THIS
# ------------------------------------------------------------------------------------------

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
alias sync="cd ~/Sync" #Goes to the Sync folder
alias .ssh="cd ~/.ssh" #Goes to the SSH folder

# Application Shortcuts
alias te="open -e" #Opens file in TextEdit
alias tfinder="open /Applications/TotalFinder.app" #Opens TotalFinder if Finder is killed
alias monitor="open /Applications/Utilities/Activity\ Monitor.app" #Opens Activity Monitor

# -----------------------------------------------------------
# DEVELOPMENT
# -----------------------------------------------------------

# ZSH
alias zshconfig="subl ~/.zshrc"
alias growl="growlnotify -m"

# Websites
alias code="cd ~/Sync/Code"
alias zen="cd ~/Sync/Code/Websites/zenstealth/zenstealth.com"
alias zensites="cd ~/Sync/Code/Websites/zenstealth/"
alias zenstart="zen && subl . && open http://localhost:4000/ && jserve"

# Jekyll Shortcuts
alias jbuild="jekyll build"
alias jserve="jekyll serve --watch" 
alias jpublish="./publish.sh; growl -n ZENSTEALTH.COM -m 'Site sync complete.'"

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

# Dotfiles
alias dot="cd ~/Sync/Code/Dotfiles"
alias dotpack="dot && ./backup.sh"

# Android
alias android="cd ~/Sync/Projects/Android/Devices/"
alias n4="cd ~/Sync/Projects/Android/Devices/Nexus\ 4/"
alias n7="cd ~/Sync/Projects/Android/Devices/Nexus\ 7/"

# -----------------------------------------------------------
# SSH
# -----------------------------------------------------------

# SSH Tunnels
# Example: alias tn='ssh server -p 22 -N -D localhost:8080'

# SSH Connections
# Example: alias foo="ssh bar"

# -----------------------------------------------------------
# RSYNC BACKUPS
# -----------------------------------------------------------

alias stacker-music="rsync -rtvuanh --delete ~/Music/iTunes/ /Volumes/STACKER/Music/Music\ Backup/iTunes"
alias stacker-music-su="rsync -rtvuah --delete ~/Music/iTunes/ /Volumes/STACKER/Music/Music\ Backup/iTunes"
alias pentecost-sync="rsync -rtvuanh --delete ~/Sync/ /Volumes/PENTECOST/Users/zenstealth/Sync/"
alias pentecost-sync-su="rsync -rtvuah --delete ~/Sync/ /Volumes/PENTECOST/Users/zenstealth/Sync/"

alias raleigh-music="rsync -rtvuanh --delete ~/Music/ /Volumes/RALEIGH/Music/"
alias raleigh-music-su="rsync -rtvuah --delete ~/Music/ /Volumes/RALEIGH/Music/"
alias raleigh-sync="rsync -rtvuanh --delete ~/Sync/ /Volumes/RALEIGH/Sync/"
alias raleigh-sync-su="rsync -rtvuah --delete ~/Sync/ /Volumes/RALEIGH/Sync/"

alias kindle="rsync -rtvuanh --delete /Volumes/Kindle/ ~/Sync/Books/Kindle\ Backup/"
alias kindle-su="rsync -rtvuah --delete /Volumes/Kindle/ ~/Sync/Books/Kindle\ Backup/"

alias phcc="rsync -rtvuanh --delete /Volumes/PHCC/ ~/Sync/Edu/PHCC/"
alias phcc-su="rsync -rtvuah --delete /Volumes/PHCC/ ~/Sync/Edu/PHCC/"

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
alias hc="rm -f ~/.zsh_history" #Clears history

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