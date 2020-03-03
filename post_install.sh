#!/bin/bash

## REMOVENDO TRAVAS DO APT
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;


## Atualizando o repositório ##
sudo apt update && 


## COMPILADORES E LINGUAGENS
sudo apt install git gedit curl apt-transport-https python3 python3-pip gcc g++ build-essential -y &&


## DRIVER HP
sudo apt install hplip hplip-data libsane-hpaio printer-driver-hpcups hplip-gui libhpmud0 -y &&

## DELUGE
sudo add-apt-repository ppa:deluge-team/ppa -y &&	
sudo apt update &&
sudo apt install deluge gparted redshift -y &&


## BRAVE
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list &&
sudo apt update &&
sudo apt install brave-browser -y &&

## SNAP E TODOS OS SEUS PROGRAMAS
sudo apt install snapd  -y &&
sudo snap install sublime-text --classic &&
sudo snap install code --classic &&  
sudo snap install spotify &&
sudo snap install wps-office-multilang && 


## Finalização, atualização e limpeza##
sudo apt update && sudo apt dist-upgrade && sudo apt full-upgrade -y
sudo apt autoclean
sudo apt autoremove -y

echo "Instalação finalaizada"
echo "Para continuar, vejo o README do repositório ou acesse o gist: "
echo "https://gist.github.com/gustoliveira/408924c43dfbcb10f8905b6114230845"
