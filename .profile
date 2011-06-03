#############################################################################
#BASH CONFIGURATIONS

# Enables fancy colors
export CLICOLOR=true

# Directory Movement
alias ..="cd .." #up one level
alias ...="cd ../.." #up two levels

#############################################################################
#SHORTCUTS

# Main Directory Shortcuts
alias home="cd ~" #Goes to user directory
alias desk="cd ~/Desktop" #Goes to the Desktop
alias down="cd ~/Downloads" #Goes to the Downloads folder
alias drop="cd ~/Dropbox" #Goes to the Dropbox folder
alias code="cd ~/Dropbox/Code" #Goes to the code folder in Dropbox
alias ssh-cd="cd ~/.ssh" #Goes to the SSH folder
alias root="cd /" #Goes down to root directory

# Code Directory Shortcuts
alias code="cd ~/Dropbox/Code" 
alias projects="cd ~/Dropbox/Code/Projects"
alias active="cd ~/Dropbox/Code/Projects/Active"

# ZENSTEALTH.COM
alias zen="cd ~/Dropbox/Code/Projects/Active/zenstealth.com"
alias zen-scp-main="scp index.html about.html music.html reading.html  nfsn-zen:/home/public/"
alias zen-scp-404="scp 404/index.html nfsn-zen:/home/public/404/"
alias zen-scp-css="scp static/stylesheet.css nfsn-zen:/home/public/static/"

# Other Projects
alias project="cat project.name"
alias tumblr="cd ~/Dropbox/Code/Projects/Active/tumblr.zenstealth.com"
alias rhs="cd ~/Dropbox/Code/Projects/Active/rhs"
alias dev1="cd ~/Dropbox/Code/Projects/Active/dev1.zenstealth.com"
alias dev2="cd ~/Dropbox/Code/Projects/Active/dev2.zenstealth.com"

#dotfiles
alias dotfiles="cd ~/Dropbox/Code/dotfiles"
alias dot-all="dot-profile | dot-git"
alias dot-profile="cp ~/.profile ~/Dropbox/Code/dotfiles/.profile"
alias dot-git="cp ~/.gitignore_global ~/Dropbox/Code/dotfiles/.gitignore_global"

#############################################################################
#GIT

# Git Shortcuts
alias ginit="git init"
alias gadd="git add ."
alias gstat="git status"
alias gcomm="git commit -m"
alias gpush="git push"
alias gbranch="git branch"
alias gcheck="git checkout"
alias glog="git log"
alias glog1="git log --oneline"

# Git External Sites
alias github="open https://github.com"

#############################################################################
#PREFERENCES

# Easy Preference Editing
alias profile-open="open ~/.profile" #Opens default Text Editor
alias profile-textedit="open -e ~/.profile" #Opens in TextEdit
alias profile="vim ~/.profile" #Opens in Vim
alias profile="nano ~/.profile" #Edits Aliases in Nano
alias profile-kod="kod ~/.profile" #Opens in Kod

alias mamp-open="sudo open -e /Applications/MAMP/conf/apache/httpd.conf"
alias mamp-kod="sudo kod /Applications/MAMP/conf/apache/httpd.conf"

#############################################################################
#SSH

# SSH Config Edit
alias sshconfig-nano="nano ~/.ssh/config" #Edits SSH Favorites
alias sshconfig-open="open ~/.ssh/config" #Edits SSH Favorites in the default Text Editor
alias sshconfig-kod="kod ~/.ssh/config" #Edits SSh Favorites in Kod

# SSH Shortcuts
alias ssh-zen="ssh nfsn-zen" #SSH into NFSN Main
alias ssh-tweetnest="ssh nfsn-tweets" #SSH into Tweetnest
alias ssh-dev="ssh dev" #SSH into Devio.us

# SSH Tunnels
alias tn='ssh tunnel -p 22 -N -D localhost:8080'
alias tn443='ssh tunnel -p 443 -N -D localhost:8080'
alias tn80='ssh tunnel -p 80 -N -D localhost:8080'

#############################################################################
#UTILITIES

# Removal Confirmation
alias rm="rm -i" #Asks for confirmation when using rm

# Useful Utilities
alias clearcache="dscacheutil -flushcache"
alias bootup="cat /etc/motd"
alias dir-copy="pwd | pbcopy"

alias h="history" #History Shortcut
alias hc="history -c" #Clears history
alias hrep="history | grep" #Finds used commands in History

alias ip="curl icanhazip.com" #Gets Public IP from icanhazip.com
alias todo="open /Users/zenstealth/Dropbox/Documents/Notational\ Velocity/todo1.txt" #Edits my Todo list in Notational Velocity

#############################################################################
#THE OTHER OTHER STUFF

# MacPorts Installer addition on 2011-01-19_at_23:32:46: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Setting PATH for MacPython 2.5
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

test -r /sw/bin/init.sh && . /sw/bin/init.sh