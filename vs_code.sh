#!bin/bash/
#Run as "sudo yes | sh vs_code.sh"

# Install CURL
sudo apt-get install curl

# Prerequists VS CODE
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg

sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

sudo sh -c 'echo "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Install
sudo apt-get update
sudo apt install code
sudo apt-get upgrade
