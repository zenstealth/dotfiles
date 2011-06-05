#############################################################################
#BASH CONFIGURATIONS

# Exports
export PS1="\[\033[0;32m\]DIRECTORY:\e[0m\] \[\033[4;31m\]\\W\[\e[0m\] \[\033[0;32m\]$ \[\e[0m\]" 

# Enables fancy colors
export CLICOLOR=true

# Directory Movement
alias ..="cd .." #up one level
alias ...="cd ../.." #up two levels

#############################################################################
#SHORTCUTS

# Main Directory Shortcuts
alias ~="cd ~" #Goes to user directory
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

# BLOG.ZENSTEALTH.COM
alias zen-blog="cd ~/Dropbox/Code/Projects/Active/zenstealth.github.com"

# Other Projects
alias project="cat project.name"
alias tumblr="cd ~/Dropbox/Code/Projects/Active/tumblr.zenstealth.com"
alias rhs="cd ~/Dropbox/Code/Projects/Active/rhs"
alias dev1="cd ~/Dropbox/Code/Projects/Active/dev1.zenstealth.com"
alias dev2="cd ~/Dropbox/Code/Projects/Active/dev2.zenstealth.com"

# Dotfiles
alias dotfiles="cd ~/Dropbox/Code/dotfiles"
alias dotall="dot-profile | dot-git | dot-motd"
alias dot-profile="cp ~/.profile ~/Dropbox/Code/dotfiles/.profile"
alias dot-git="cp ~/.gitignore_global ~/Dropbox/Code/dotfiles/.gitignore_global"
alias dot-motd="cp /etc/motd ~/Dropbox/Code/dotfiles/motd"

# Twitter
alias tweet="twitter tweet"
alias t="twitter"
alias tstat="twitter status"

# Application Shortcuts
alias kod.="kod ." #Opens Kod in the current directory
alias textedit="open -e" #Opens file in TextEdit

# Internet Shortcuts
alias gmail="open https://mail.google.com/"
alias greader="open https://www.google.com/reader/view/"
alias reddit="open http://www.reddit.com"
alias facebook="open https://www.facebook.com"
alias tumblr="open http://www.tumblr.com/"

#############################################################################
#GIT

# Git Shortcuts
alias ga='git add .'
alias gp='git push'
alias gl='git log'
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
#UTILITIES AND FUN STUFF

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

# Fun Stuff
alias moo="fortune | cowsay -n"

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