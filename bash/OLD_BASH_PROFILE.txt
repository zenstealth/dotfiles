#############################################################################
#BASH CONFIGURATIONS

# Exports

# Simple One: 
# export PS1="\[\033[0;32m\]$ \[\e[0m\]" 

# Enables fancy colors
export CLICOLOR=true
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

# Directory Movement
alias ..="cd .." #up one level
alias ...="cd ../.." #up two levels

#############################################################################
#SHORTCUTS

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

#############################################################################
#PROJECTS

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
alias dotall="dot-profile | dot-git | dot-motd | dot-vim"
alias dot-profile="cp ~/.profile ~/Dropbox/Code/dotfiles/bash/.profile"
alias dot-git="cp ~/.gitignore_global ~/Dropbox/Code/dotfiles/git/.gitignore_global"
alias dot-motd="cp /etc/motd ~/Dropbox/Code/dotfiles/bash/motd"
alias dot-vim="cp ~/.vimrc  ~/Dropbox/Code/dotfiles/vim/.vimrc && cp -r ~/.vim/* ~/Dropbox/Code/dotfiles/vim/.vim/"

#############################################################################
#APPS

# Application Shortcuts
alias te="open -e" #Opens file in TextEdit
alias tfinder="open /Applications/TotalFinder.app" #Opens TotalFinder if Finder is killed
alias monitor="open /Applications/Utilities/Activity\ Monitor.app" #Opens Activity Monitor

#############################################################################
#GIT

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

#############################################################################
#SSH

# SSH Tunnels
alias tn='ssh feral -p 22 -N -D localhost:8080'

#############################################################################
#UTILITIES AND FUN STUFF

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

#############################################################################
#MAC ONLY STUFF

# Add spacer to the Dock
alias dock+="defaults write com.apple.dock persistent-apps -array-add '{ "tile-type" = "spacer-tile"; }' && killall Dock"

# Ejects any discs in the Superdrive
alias eject="drutil tray eject 0"

#############################################################################
#THE OTHER OTHER STUFF

