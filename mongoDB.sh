#!/bin/bash
#DOES NOT WORK NOT TESTED

# Description
echo -e "\e[1;31m ZSH Installer by StrawHatHacker \e[0m"
printf "\n"
echo "The installation of MongoDB is starting , please wait for 3 to 4 minutes"

sleep 5

touch log.txt

# Updates the package list
printf "\n" && printf "\n" >> log.txt
echo Updating package list...
echo "Update for package list" > log.txt
sudo apt update >> log.txt

# Imports public key
printf "\n" && printf "\n" >> log.txt
echo Importing public key...
sudo wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add - 2>/dev/null

# Creates a list file
printf "\n" >> log.txt
echo Creating list file...
if [[ $(lsb_release -rs) == "20.04" ]]; then
    echo Your system is "Ubuntu 20.04 Focal"
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

elif [[ $(lsb_release -rs) == "18.04" ]]; then
    echo Your system is "Ubuntu 18.04 Bionic"
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

elif [[ $(lsb_release -rs) == "16.04" ]]; then
    echo Your system is "Ubuntu 16.04 Xenial"
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
else 
    echo This is not a compatible system. Exiting... >> log.txt
    exit 0  
fi

# Installs the latest mongoDB version
echo Updating package list \& Installing...
printf "\n" >> log.txt
sudo apt update >> log.txt
sudo apt-get install -y mongodb-org >> log.txt
sudo systemctl start mongod
sudo systemctl enable mongod

echo -e "\e[1;31m MongoDb has been successfully installed and enabled! \e[0m"

clear 

exit 0