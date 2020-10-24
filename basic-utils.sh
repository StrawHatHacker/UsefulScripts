#!/bin/bash
# Install git, bashtop, nodejs, pm2, ranger

# Description
echo -e "\e[1;31m Basic Util Installer by StrawHatHacker \e[0m"
printf "\n"
echo "The installation is starting , please wait for 3 to 4 minutes for the installation to complete."

sleep 5

touch log.txt

os_version=`lsb_release -rs`

if [[ "$os_version" == "20.04" || "$os_version" == "18.04" || "$os_version" == "16.04" || $(sed 's/\..*//' /etc/debian_version) == "9" || $(sed 's/\..*//' /etc/debian_version) == "10" ]]; then
    echo "Your are on an Ubuntu or Debian system"
    
    # Updates the package list
    echo Updating package list...
    echo "Update for package list" > log.txt
    printf "\n" && printf "\n" >> log.txt
    sudo apt update >> log.txt
    
    # Installs git
    echo Installing git...
    printf "\n" >> log.txt
    echo "Installation of git" >> log.txt
    printf "\n" && printf "\n" >> log.txt
    sudo apt install git -y 2>/dev/null
    
    # Installs bashtop
    echo Installing bashtop...
    printf "\n" >> log.txt
    echo "Installation of bashtop" >> log.txt
    printf "\n" && printf "\n" >> log.txt
    sudo git clone https://github.com/aristocratos/bashtop.git 2>/dev/null
    cd bashtop
    sudo make install >> log.txt
    cd ..
    sudo rm -R bashtop
    
else
    echo -e "\e[1;31mYour system isn't compatible for the installer! Exiting... \e[0m" && echo "This is not a compatible system. Exiting...">> log.txt
    exit 0
    
fi

clear

echo -e "\e[1;31m Basic Utils have been successfully installed! \e[0m"

exit 0