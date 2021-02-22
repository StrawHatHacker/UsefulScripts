#!/bin/bash
# Installs mongoDB and enables it
# MongoDB only supports the 64-bit versions of these platforms.

# Description
echo -e "\e[1;31m MongoDB Installer by StrawHatHacker \e[0m"
printf "\n"
echo "The installation of MongoDB is starting , please wait for 1 to 2 minutes for the installation to complete."

sleep 5

touch log.txt

# Configuring yum repos
printf "\n" && printf "\n" >> log.txt
echo Configuring yum repos...
echo -e '[mongodb-org-4.4]\nname=MongoDB Repository\nbaseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.4/x86_64/\ngpgcheck=1\nenabled=1\ngpgkey=https://www.mongodb.org/static/pgp/server-4.4.asc' >> /etc/yum.repos.d/mongodb-org-4.4.repo

# Installs the latest mongoDB version
echo Updating package list \& Installing...
printf "\n" >> log.txt
sudo yum install -y mongodb-org >> log.txt
sudo systemctl start mongod
sudo systemctl enable mongod

clear 
echo -e "\e[1;31m MongoDb has been successfully installed and enabled! \e[0m"

exit 0
