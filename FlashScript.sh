#!/bin/bash

#Limpando repositórios de pacotes
sudo apt-get clean

#Atualizando pacotes
sudo apt-get update

#Atualizando versões
sudo apt-get upgrade -y

#Instalando pacote de idiomas completos
sudo apt-get install language-pack-gnome-pt language-pack-pt-base

#Instalando o Google Chrome
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

sudo apt-get update

sudo apt-get install google-chrome-stable -y

#Instalando Dropbox
wget https://d1ilhw0800yew8.cloudfront.net/client/dropbox-lnx.x86_64-7.3.29.tar.gz -O dropbox.tar.gz

sudo tar -xvf dropbox.tar.gz -C /opt/

sudo mv /opt/.dropbox-dist/ /opt/dropbox

sudo ln -sf /opt/dropbox/dropboxd /usr/bin/dropbox

echo -e '[Desktop Entry]\n Version=1.0\n Name=dropbox\n Exec=/opt/dropbox/dropboxd\n Icon=/ \n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/dropbox.desktop

#Instalando Sublime Text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3

sudo apt-get update

sudo apt-get install sublime-text-installer -y

#Instalando VLC
sudo add-apt-repository ppa:videolan/stable-daily

sudo add-apt-repository ppa:nicola-onorata/desktop

sudo apt-get update

sudo apt-get install vlc -y

#Instalando o ZRAM
sudo apt-get install zram-config

#Removendo pacotes que não serão mais utilizados
sudo apt autoremove -y

