#!bin/bash/

#Updates
sudo apt update

#Installs VSCode
sudo apt install software-properties-common apt-transport-https wget -y

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code
sudo apt install thunderbird
sudo apt install borgbackup

#Upgrades
sudo apt-get upgrade
