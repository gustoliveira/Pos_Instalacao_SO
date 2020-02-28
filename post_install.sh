#!/bin/bash

## Variáveis
DIRETORIO_DOWNLOADS='/home/$USER/Softwares'
mkdir '$DIRETORIO_DOWNLOADS'


## REMOVENDO TRAVAS DO APT
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;


## Atualizando o repositório ##
sudo apt update && 


## COMPILADORES E LINGUAGENS
sudo apt install git gedit curl python3 python3-pip gcc g++ build-essential -y &&


## DRIVER HP
sudo apt install hplip hplip-data libsane-hpaio printer-driver-hpcups hplip-gui libhpmud0 -y &&

## DELUGE
sudo add-apt-repository ppa:deluge-team/ppa -y &&	
sudo apt update &&
sudo apt install deluge gparted redshift -y &&


## CHROME
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P "$DIRETORIO_DOWNLOADS" &&
sudo dpkg -i $DIRETORIO_DOWNLOADS/*.deb


## SNAP E TODOS OS SEUS PROGRAMAS
sudo apt install snapd  -y &&
sudo snap install sublime-text --classic &&
sudo snap install code --classic &&  
sudo snap install spotify &&
sudo snap install wps-office-multilang && 

sudo snap install ubuntu-make --classic &&
umake android &&
umake dart &&

## Finalização, atualização e limpeza##
sudo apt update && sudo apt dist-upgrade && sudo apt full-upgrade -y
sudo apt autoclean
sudo apt autoremove -y

echo "Instalação finalaizada"
echo "Para continuar, vejo o README do repositório ou acesse o gist: "
echo "https://gist.github.com/gustoliveira/408924c43dfbcb10f8905b6114230845"
