#!/bin/sh

sudo apt update
sudo apt upgrade -y
sudo apt install build-essential g++ cmake openssh-server git vim curl wget zsh inkscape inkscape-open-symbols inkscape-speleo inkscape-survex-export inkscape-textext vlc vlc-data vlc-l10n vlc-plugin-access-extra vlc-plugin-base vlc-plugin-bittorrent vlc-plugin-fluidsynth vlc-plugin-jack vlc-plugin-samba vlc-plugin-skins2 vlc-plugin-svg vlc-plugin-video-output vlc-plugin-video-splitter vlc-plugin-visualization qbittorrent -y
# serial adapters
sudo apt remove modemmanager
sudo usermod -a -G dialout,tty $USER
# ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
npm i -g npm
#git config
git config --global user.name "Marcin Kopa"
git config --global user.email "marcin@desktop"
ssh-keygen -b 4096 -C "marcin@desktop"
ssh-keygen -q -b 4096 -C "marcin@desktop" -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1
