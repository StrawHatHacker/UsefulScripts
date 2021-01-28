#!/bin/bash
# Install git, bpytop, nodejs LTS, pm2, ranger

# Description
echo -e "\e[1;31m Basic Util Installer by StrawHatHacker \e[0m"
printf "\n"
echo "The installation is starting , please wait for 3 to 4 minutes for the installation to complete."

sleep 5

touch log.txt

# Updates the package list
echo Updating package list...
echo "Update for package list" >log.txt
printf "\n" && printf "\n" >>log.txt
sudo apt update >>log.txt

# Installs git
echo Installing git...
printf "\n" >>log.txt
echo "Installation of git" >>log.txt
printf "\n" && printf "\n" >>log.txt
sudo apt install git -y 2>/dev/null

# Installs bpytop
echo Installing bpytop...
printf "\n" >>log.txt
echo "Installation of bashtop" >>log.txt
printf "\n" && printf "\n" >>log.txt
sudo apt install bpytop -y 2>/dev/null

# Installs node.js LTS
echo Installing node.js LTS...
printf "\n" >>log.txt
echo "Installation of node.js LTS" >>log.txt
printf "\n" && printf "\n" >>log.txt
cd ~
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh 2>/dev/null
sudo bash nodesource_setup.sh 2>/dev/null
sudo apt install nodejs 2>/dev/null
node -v
npm -v

# Installs pm2 
echo Installing pm2...
printf "\n" >>log.txt
echo "Installation of pm2" >>log.txt
printf "\n" && printf "\n" >>log.txt
npm install pm2 -g 2>/dev/null
pm2 completion install 2>/dev/null

# Installs ranger
echo Installing ranger...
printf "\n" >>log.txt
echo "Installation of ranger" >>log.txt
printf "\n" && printf "\n" >>log.txt
sudo apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfo 2>/dev/null

clear

echo -e "\e[1;31m Basic Utils have been successfully installed! \e[0m"

exit 0
