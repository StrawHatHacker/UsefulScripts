#!/bin/bash
# Installs Zsh, Oh-My-Zsh, wget and git
# Tested on Ubuntu 16.04, 18.04, 20.04

# Description 
echo -e "\e[1;31m ZSH Installer by StrawHatHacker \e[0m"
printf "\n"
echo "The installation is starting , please wait for at least 2 to 3 minutes"

sleep 5

touch log.txt

# Updates the package list
echo Updating package list...
echo "Update for package list" > log.txt
printf "\n" && printf "\n" >> log.txt
sudo apt update >> log.txt

# Installs ZSH
echo Installing ZSH...
printf "\n" >> log.txt
echo "Installation of ZSH" >> log.txt
printf "\n" && printf "\n" >> log.txt
sudo apt install zsh -y 2>/dev/null

# Installs wget and git
echo Installing wget and git...
printf "\n" >> log.txt
echo "Installation of wget and git" >> log.txt
printf "\n" && printf "\n" >> log.txt
sudo apt install wget -y 2>/dev/null
sudo apt install git -y 2>/dev/null

# Installs OhMyZsh
echo Installing OhMyZsh...
printf "\n" >> log.txt
echo "Installation of OhMyZsh" >> log.txt
printf "\n" && printf "\n" >> log.txt
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh 2>/dev/null
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

clear 

echo -e "\e[1;31m ZSH has been successfully installed! \e[0m"
chsh -s $(which zsh)

zsh
exit 0
