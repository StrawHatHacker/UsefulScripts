#!/bin/bash
# Installs Zsh, Oh-My-Zsh, wget, git

# Description
echo -e "\e[1;31m ZSH Installer by StrawHatHacker \e[0m"
printf "\n"
echo "The installation Oh-My-Zsh is starting , please wait 2 to 3 minutes"

sleep 5

touch log.txt

# Updates the package list
echo Updating package list...
echo "Update for package list" > log.txt
printf "\n" && printf "\n" >> log.txt
sudo yum update >> log.txt

# Installs ZSH
echo Installing ZSH...
printf "\n" >> log.txt
echo "Installation of ZSH" >> log.txt
printf "\n" && printf "\n" >> log.txt
sudo yum install zsh -y 2>/dev/null

# Installs wget and git
echo Installing wget and git...
printf "\n" >> log.txt
echo "Installation of wget and git" >> log.txt
printf "\n" && printf "\n" >> log.txt
sudo yum install wget -y 2>/dev/null
sudo yum install git -y 2>/dev/null

# Installs OhMyZsh
echo Installing OhMyZsh...
printf "\n" >> log.txt
echo "Installation of OhMyZsh" >> log.txt
printf "\n" && printf "\n" >> log.txt
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

clear 

echo -e "\e[1;31m ZSH has been successfully installed! \e[0m"
chsh -s /bin/zsh root 2>/dev/null

zsh
exit 0
