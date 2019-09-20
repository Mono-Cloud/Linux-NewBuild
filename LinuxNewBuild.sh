#!/bin/bash

#This script will install my commonly used programs and config files. Make sure to run it as root.

echo "[+] Installing Vim, Git, Ufw, Fish and Tmux"
sleep 2

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

echo "[+] All programs installed successfully"
sleep 2


#Change default shell
chsh -s /usr/bin/fish
echo "[+] Default shell changed to fish"
sleep 1

#Create a directory for personal fish functions
cd
mkdir .config/fish/functions
echo "[+] Folder created for fish functions"


#Pull fish functions from personal github repo
git clone https://github.com/Mono-Cloud/Fish_Functions.git .config/fish/functions/.
echo "[+] Fish functions cloned successfully"
sleep 2

#Run previous tmux session when opening a shell
#sudo echo "test $TERM != "screen >> /etc/fish/config.fish"
#sudo echo "exec tmux new -s Main; or tmux new -s Main" >> /etc/fish/config.fish
#echo "[+] Tmux commands echoed successfully"

#Pull github repo and move file
cd
git clone https://github.com/Mono-Cloud/tmux.git
mv ./tmux/.tmux.conf ~

#Remove created folder
rm -rf tmux

echo "[+] Tmux config file now in place"
sleep 1
echo "[+] Now updating system
sleep 2
sudo apt update && sudo apt upgrade && supd apt dist-upgrade
echo "[+] Setup Complete, please reboot system"
sleep 2
