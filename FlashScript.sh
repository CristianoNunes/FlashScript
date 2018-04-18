#!/bin/bash

#Limpando repositórios de pacotes
sudo apt-get clean

#Atualizando pacotes
sudo apt-get update -y

#Atualizando versões
sudo apt-get upgrade -y

#Atualizando SO
sudo apt-get dist-upgrade -y

#Instalando o Google Chrome
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

sudo apt-get update -y

sudo apt-get install google-chrome-stable -y

#Instalando Git
sudo apt-get install git -y

git config --global user.name "CristianoNunes"

git config --global user.email "cristianonunes9@hotmail.com"

#Instalando Dropbox
git clone https://github.com/zant95/elementary-dropbox /tmp/elementary-dropbox && bash /tmp/elementary-dropbox/install.sh

#Instalando Oracle JDK 8
sudo add-apt-repository ppa:webupd8team/java -y

sudo apt-get update -y

sudo apt-get install oracle-java8-installer -y

sudo apt-get install oracle-java8-set-default -y

#Instalando Sublime Text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update -y

sudo apt-get install sublime-text -y

#Instalando VLC
sudo add-apt-repository ppa:videolan/stable-daily

sudo add-apt-repository ppa:nicola-onorata/desktop

sudo apt-get update

sudo apt-get install vlc -y

#Configurando ambiente de Desenvolvimento Python e Django
#Instalando Pip
sudo apt-get install python-pip -y
sudo pip install --upgrade pip -y

#Instalando Virtualenv
sudo -H pip install virtualenv -y

#instalando Virtualenvwrapper
sudo -H pip install virtualenvwrapper -y

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
