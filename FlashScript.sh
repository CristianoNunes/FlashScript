#!/bin/bash

#Limpando repositórios de pacotes
sudo apt-get clean

#Atualizando pacotes
sudo apt-get update -y

#Atualizando versões
sudo apt-get upgrade -y

#Instalando o Google Chrome
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

sudo apt-get update -y

sudo apt-get install google-chrome-stable -y

#Instalando Dropbox
wget https://d1ilhw0800yew8.cloudfront.net/client/dropbox-lnx.x86_64-7.3.29.tar.gz -O dropbox.tar.gz

sudo tar -xvf dropbox.tar.gz -C /opt/

sudo mv /opt/.dropbox-dist/ /opt/dropbox

sudo ln -sf /opt/dropbox/dropboxd /usr/bin/dropbox

echo -e '[Desktop Entry]\n Version=1.0\n Name=dropbox\n Exec=/opt/dropbox/dropboxd\n Icon=/ \n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/dropbox.desktop

#Instalando OpenJDK 8
sudo add-apt-repository ppa:openjdk-r/ppa

sudo apt-get update -y

sudo apt-get install openjdk-8-jdk

#Instalando Sublime Text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update -y

sudo apt-get install sublime-text -y

#Instalando Git
sudo apt-get install git -y

git config --global user.name "CristianoNunes"

git config --global user.email cristianonunes9@hotmail.com

#Instalando VLC
sudo add-apt-repository ppa:videolan/stable-daily

sudo add-apt-repository ppa:nicola-onorata/desktop

sudo apt-get update

sudo apt-get install vlc -y

#Instalando o descompactador RAR
sudo apt-get install rar

#Removendo Libre Office
sudo apt-get remove --purge libreoffice* -y

#Limpando repositórios de pacotes
sudo apt-get clean

#Atualizando pacotes
sudo apt-get update -y

#Atualizando versões
sudo apt-get upgrade -y

#Removendo pacotes que não serão mais utilizados
sudo apt autoremove -y
