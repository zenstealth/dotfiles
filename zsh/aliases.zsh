# Directory Shortcuts
alias ~="cd ~" #Goes to home directory
alias home="cd ~" #Goes to home directory
alias desk="cd ~/Desktop" #Goes to the Desktop
alias down="cd ~/Downloads" #Goes to the Downloads folder
alias code="cd ~/Code" #Goes to the Code folder
alias .ssh="cd ~/.ssh" #Goes to the SSH folder

# Utilities Shortcuts
alias rm="rm -i" #Asks for confirmation when using rm
alias h="history" #History Shortcut
alias hc="rm -f ~/.zsh_history" #Clears history
alias ip="curl icanhazip.com" #Gets Public IP
alias http="python -m SimpleHTTPServer" #Starts a simple HTTP server in current directory at http://localhost:8000/
alias up!="sudo apt update && sudo apt upgrade" #Bruh

# Website Shortcuts
alias web="cd ~/Code/Websites" #Goes to the Websites folder
alias ada="cd ~/Code/Websites/adaprime.github.io"
alias github="xdg-open https://github.com/"

# SSH
# Example: alias foo="ssh bar"
# Tunnels: alias tn='ssh server -p 22 -N -D localhost:8080'

# ZSH & Dotfiles
alias zconf="atom ~/.zshrc"
alias zupgrade="upgrade_oh_my_zsh"
alias aconf="atom ~/.oh-my-zsh/custom/aliases.zsh"
alias tconf="atom ~/.tmux.conf"
alias dot="cd ~/Code/Dotfiles/"
alias dotconf="atom ~/Code/Dotfiles/"
alias dotback="dot && ./dotfiles-backup.sh"

# Git
alias ga='git add'
alias gpu='git push'
alias gl='git log'
alias glone='git log --oneline'
alias glg='git lg'
alias gs='git status'
alias gd='git diff'
alias gcm='git commit -m'
alias gcma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpull='git pull'
alias gcl='git clone'

# Jekyll Shortcuts
# alias jbuild="jekyll build"
# alias jserve="jekyll serve --watch"
# alias jpub="./publish.sh"
alias jserve="docker run --rm --label=jekyll --volume=$(pwd):/srv/jekyll -it -p 0.0.0.0:4000:4000 jekyll/jekyll jekyll serve"
