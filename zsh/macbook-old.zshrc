# ------------------------------------------------------------------------------------------
# OH-MY-ZSH // LAST UPDATED 2014-08-05
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
DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew brew-cask osx ruby zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
homebrew=/usr/local/bin:/usr/local/sbin #Makes sure that homebrew installed tools are the one used instead of built-in ones
export PATH=$homebrew:$PATH #See above
export HOMEBREW_CASK_OPTS="--appdir=/Applications" #Installs brew cask installed apps in the Applications folder
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting #Ruby RVM
export PATH=${PATH}:/Users/zenstealth/Sync/Tech/Google/Android/Development/ADB #When Android ADB tool

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

alias yt='youtube-dl -o "%(title)s.%(ext)s"' #Downloads videos from Youtube
alias ytm='youtube-dl --extract-audio --audio-format mp3 --audio-quality 320K' #Downloads videos from Youtube as mp3 files

alias h="history" #History Shortcut
alias hc="rm -f ~/.zsh_history" #Clears history

# Internet Tools
alias ip="curl icanhazip.com" #Gets Public IP from icanhazip.com
alias http="python -m SimpleHTTPServer" #Starts a simple HTTP server in current directory at http://localhost:8000/

# Fun Stuff
alias moo="fortune | cowsay -n"

# -----------------------------------------------------------
# SSH // DRINK ALL THE THINGS
# -----------------------------------------------------------

# SSH Tunnels
# Example: alias tn='ssh server -p 22 -N -D localhost:8080'

# SSH Connections
# Example: alias foo="ssh bar"

# -----------------------------------------------------------
# DEVELOPMENT // HACK ALL THE BOOZE
# -----------------------------------------------------------

# ZSH
alias zshconfig="subl ~/.zshrc"
alias upgrade-everything="upgrade_oh_my_zsh && brew update && brew upgrade"
alias growl="growlnotify -m"

# Dotfiles
alias dot="cd ~/Sync/Tech/Code/Dotfiles/"
alias dotpack="dot && ./backup.sh"

# Homebrew
alias bcask="brew cask"

# Websites
alias code="cd ~/Sync/Tech/Code"
alias zen="cd ~/Sync/Tech/Websites/zenstealth/zenstealth.com"
alias zensites="cd ~/Sync/Tech/Websites/zenstealth/"
alias zenstart="zen && subl . && open http://localhost:4000/ && jserve"

# Jekyll Shortcuts
alias jbuild="jekyll build"
alias jserve="jekyll serve --watch" 
alias jpublish="./publish.sh; growl -n ZENSTEALTH.COM -m 'Site sync complete.'"

# Git Shortcuts
alias ga='git add'
alias gpu='git push'
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
alias gpul='git pull'
alias gcl='git clone'

# Git External Sites
alias github="open https://github.com" #Opens GitHub dashboard
alias github-zen="open https://github.com/zenstealth" #Opens my GitHub profile


# -----------------------------------------------------------
# MAC ONLY STUFF
# -----------------------------------------------------------

# Application Shortcuts
alias tx="open -e" #Opens file in TextEdit
alias tfinder="open /Applications/TotalFinder.app" #Opens TotalFinder if Finder is killed
alias monitor="open /Applications/Utilities/Activity\ Monitor.app" #Opens Activity Monitor

# Set screen brightness, use values between 0 and 1
alias sb="screenbrightness -d 1"

# Add spacer to the Dock
alias dock+="defaults write com.apple.dock persistent-apps -array-add '{ "tile-type" = "spacer-tile"; }' && killall Dock"

# Ejects any discs in the Superdrive
alias eject="drutil tray eject 0"

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

alias phcc="rsync -rtvuanh --delete /Volumes/PHCC/ ~/Sync/Documents/Education/PHCC/"
alias phcc-su="rsync -rtvuah --delete /Volumes/PHCC/ ~/Sync/Documents/Education/PHCC/"
