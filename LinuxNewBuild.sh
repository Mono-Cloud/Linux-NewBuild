#!/bin/bash

#This script will install my commonly used programs and config files. Make sure to run it as root.

sudo apt install vim
echo "[+] Vim Installed"

sudo apt install git
echo "[+] Git Installed"

sudo apt install ufw
echo "[+] Ufw Installed"

sudo apt install fish
echo "[+] Fish Installed"

sudo apt install tmux
echo "[+] Tmux Installed"

#Ensure ufw is running 
sudo ufw enable
echo "[+] Ufw is enabled"

# Run fish
fish

#Create a directory for personal fish functions
mkdir .config/fish/functions

#Pull fish functions from personal github repo
git clone https://github.com/Mono-Cloud/Fish_Functions.git .config/fish/functions/.`

#Change default shell
chsh -s /usr/bin/fish

#Fully update system
full_update

#Run previous tmux session when opening a shell
sudo echo "test $TERM != "screen >> /etc/fish/config.fish"
sudo exec tmux new -s Main; or tmux new -s Main" >> /etc/fish/config.fish

#Pull github repo and move file
git clone https://github.com/Mono-Cloud/tmux.git
mv ./tmux/.tmux.conf ~

#Remove created folder
rm -rf tmux

echo "[+] Tmux config file now in place"
echo "[*] You now need to specify the config file for tmux to use. Press Ctrl+b then :config-file .tmux.conf"
echo "[+] Setup Complete"
