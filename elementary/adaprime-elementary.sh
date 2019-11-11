# First you update your system
sudo apt update && sudo apt-get dist-upgrade

# Uninstall unnecessary programs
sudo apt purge epiphany-browser epiphany-browser-data #browser
sudo apt purge pantheon-mail

# Properties Commons (to install elementary tweaks)
sudo apt install software-properties-common
# Install File Compression Libs
sudo apt install rar unrar zip unzip p7zip-full p7zip-rar
# Multimedia Codecs
sudo apt install ubuntu-restricted-extras libavcodec-extra ffmpeg
# Essential programs
sudo apt install deluge filezilla gdebi git gnome-system-monitor htop krita steam veracrypt vlc browser-plugin-vlc

# Elementary Tweaks
## 1. adding repository
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
## 2. updating apt-get
sudo apt update
## 3. installing tweaks
sudo apt install elementary-tweaks

# Enable A2DP
sudo apt install pavucontrol

# Reduce overheating and improve battery life
# 1. adding repository
sudo add-apt-repository ppa:linrunner/tlp
# 2. updating apt-get
sudo apt-get update
# 3. installing package
sudo apt-get install tlp tlp-rdw
# 4. for ThinkPads an additional
sudo apt-get install tp-smapi-dkms acpi-call-dkms
# 4. starting application
sudo tlp start

# Install Google Chrome
sudo apt install libxss1 libappindicator1 libindicator7
## 1. downloading last stable package
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
## 2. installing package
sudo dpkg -i google-chrome-stable_current_amd64.deb
## 3. fixing broken dependencies
sudo apt install -f
## 4. free up space
rm google-chrome*.deb

# Install Spotify
## 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
## 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
## 3. Update list of available packages
sudo apt update
## 4. Install Spotify
sudo apt install spotify-client

# Install Atom
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get install atom

# Install Discord
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi ~/discord.deb

# Install neofetch
# add ppa
sudo add-apt-repository ppa:dawidd0811/neofetch
# update repos
sudo apt update
# install neofetch
sudo apt install neofetch

# Install Guake latest
# add ppa
sudo add-apt-repository ppa:linuxuprising/guake
# update repos
sudo apt Update
# install guake
sudo apt install guake

# Git setup
printf "Enter your name for git commits: \n"
read username
printf "Enter your email for git: \n"
read email
git config --global user.name ${username}
git config --global user.email ${email}

# ZSH
sudo apt install zsh
chsh -s $(which zsh)
# install oh-my-zsh
printf "Enter 'exit' after installation of oh-my-zsh is finished to get back to the installation script. \n "
printf "Press <Enter> to continue. \n "
read input
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ZSH Plugins
git clone https://github.com/djui/alias-tips.git ~/.oh-my-zsh/custom/plugins/alias-tips/
git clone https://github.com/supercrabtree/k ~/.oh-my-zsh/custom/plugins/k/
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Dotfiles
git clone https://github.com/adaprime/dotfiles.git ~/Code/Dotfiles/

# delete existing files in home directory
rm ~/.aliases
rm ~/.zshrc
# create soft links
ln -s /home/$USER/Code/Dotfiles/.aliases /home/$USER/.aliases
ln -s /home/$USER/Code/Dotfiles/.zshrc /home/$USER/.zshrc
source ~/.zshrc
source ~/.aliases

# Clean up
sudo apt autoremove
sudo apt autoclean
