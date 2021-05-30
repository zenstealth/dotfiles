# Run this script as root!

# System update
apt update && apt-get dist-upgrade

# Uninstall unnecessary programs
apt purge epiphany-browser epiphany-browser-data pantheon-mail

# Install Properties Commons (to install elementary tweaks)
apt install software-properties-common
# Install File Compression Libs
apt install rar unrar zip unzip p7zip-full p7zip-rar
# Multimedia Codecs
apt install ubuntu-restricted-extras libavcodec-extra ffmpeg
# Essential programs
apt install deluge filezilla gdebi git gnome-system-monitor htop krita pavucontrol steam veracrypt vlc browser-plugin-vlc

# Install PPA Programs
add-apt-repository ppa:philip.scott/elementary-tweaks
add-apt-repository ppa:dawidd0811/neofetch
add-apt-repository ppa:linuxuprising/guake
add-apt-repository ppa:vantuz/cool-retro-term
apt install elementary-tweaks neofetch guake cool-retro-term

# Reduce overheating and improve battery life
# 1. adding repository
add-apt-repository ppa:linrunner/tlp
# 2. updating apt-get
apt-get update
# 3. installing package
apt-get install tlp tlp-rdw
# 4. for ThinkPads an additional
apt-get install tp-smapi-dkms acpi-call-dkms
# 4. starting application
tlp start

# Install Google Chrome
apt install libxss1 libappindicator1 libindicator7
## 1. downloading last stable package
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
## 2. installing package
dpkg -i google-chrome-stable_current_amd64.deb
## 3. fixing broken dependencies
apt install -f
## 4. free up space
rm google-chrome*.deb

# Install Spotify
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list
apt update
apt install spotify-client

# Install Atom
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | apt-key add -
sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
apt-get install atom

# Install Discord
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
gdebi ~/discord.deb

# Git setup
printf "Enter your name for git commits: \n"
read username
printf "Enter your email for git: \n"
read email
git config --global user.name ${username}
git config --global user.email ${email}

# ZSH
apt install zsh
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
ln -s /home/$USER/Code/Dotfiles/zsh/aliases.zsh /home/$USER/.oh-my-zsh/custom/aliases.zsh
ln -s /home/$USER/Code/Dotfiles/.zshrc /home/$USER/.zshrc
source ~/.zshrc
source ~/.aliases

# Clean up
apt autoremove
apt autoclean
