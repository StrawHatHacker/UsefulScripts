# Installs Zsh, Oh-My-Zsh, wget and git

echo Updating package list
sudo apt update >/dev/null

echo Installing ZSH
sudo apt install zsh -y 2>/dev/null

echo Installing wget and git
sudo apt install wget -y 2>/dev/null
sudo apt install git -y 2>/dev/null

echo Installing OhMyZsh
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh 2>/dev/null
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

echo Making ZSH the default shell
chsh -s $(which zsh)

echo Done!
zsh
exit 0