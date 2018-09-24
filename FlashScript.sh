#!/bin/bash

#Limpando repositórios de pacotes
sudo apt-get clean &&

#Atualizando pacotes
sudo apt-get update &&

#Atualizando versões
sudo apt-get upgrade -y &&

#Atualizando SO
sudo apt-get dist-upgrade -y &&

#Instalando PPAs e pacote.deb
sudo apt install software-properties-common gdebi -y &&

#Instlando Gerenciador Gráfico de PPAs
sudo apt install software-properties-gtk -y &&

#Instlando Curl
sudo apt install curl -y &&

#Instalando Codecs
sudo apt install ubuntu-restricted-extras -y &&

#Instalando Tweak Tools
#Ubuntu
sudo apt install gnome-tweak-tool -y &&
#Elementary
sudo add-apt-repository -y ppa:philip.scott/elementary-tweaks && sudo apt update && sudo apt install -y elementary-tweaks &&

#Instalando o Google Chrome
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' &&
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - &&
sudo apt-get update &&
sudo apt-get install google-chrome-stable -y &&

#Instalando Git
sudo apt-get install git -y &&
git config --global user.name "CristianoNunes" &&

#Instalando Libs para o Android Studio
sudo apt-get install lib32z1 lib32ncurses5 lib32stdc++6 -y &&

#Instalando Oracle JDK 8
sudo add-apt-repository ppa:webupd8team/java -y &&
sudo apt-get update &&
sudo apt-get install oracle-java8-installer -y &&
sudo apt-get install oracle-java8-set-default -y &&

#Instalando VirtualBox
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" >> /etc/apt/sources.list.d/virtualbox.list' &&
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add - &&
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add - &&
sudo apt-get update &&
sudo apt-get install virtualbox -y &&

#Instalando Sublime Text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - &&
sudo apt-get install apt-transport-https -y &&
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list &&
sudo apt-get update &&
sudo apt-get install sublime-text -y &&

#Instalando VLC
sudo add-apt-repository ppa:videolan/stable-daily -y &&
sudo add-apt-repository ppa:nicola-onorata/desktop -y &&
sudo apt-get update -y &&
sudo apt-get install vlc -y &&

#Configurando ambiente de Desenvolvimento Python e Django
#Instalando Pip
sudo apt-get install python-pip -y &&
sudo -H pip install --upgrade pip &&

#Instalando Virtualenv
sudo -H pip install virtualenv &&

#instalando Virtualenvwrapper
sudo -H pip install virtualenvwrapper &&

#Instalando NVM
sudo apt-get update &&
sudo apt-get install build-essential libssl-dev -y &&
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash &&
source ~/.bashrc &&
source ~/.profile &&
nvm install 8.12.0 &&

#Instalando React Native
npm install -g react-native &&
npm install -g react-native-cli &&

#Instalando Franz 5.0
wget https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.18/franz_5.0.0-beta.18_amd64.deb &&
sudo dpkg -i franz_5.0.0-beta.18_amd64.deb -y &&

#Instalando o descompactadores
sudo apt-get install zip unzip rar unrar -y &&

#Instalando Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90 &&
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list &&
sudo apt-get update &&
sudo apt-get install spotify-client -y &&

#Instalando Shotwell Photo Manager
sudo add-apt-repository ppa:yg-jensge/shotwell -y && sudo apt update && sudo apt install shotwell -y &&

#Removendo Libre Office
sudo apt-get remove --purge libreoffice* -y &&

#Instalando WPS Office
wget http://kdl.cc.ksosoft.com/wps-community/download/6757/wps-office_10.1.0.6757_amd64.deb &&
sudo dpkg -i wps-office_10.1.0.6757_amd64.deb -y &&
wget http://wps-community.org/download/dicts/pt_BR.zip &&
sudo unzip pt_BR.zip -d /opt/kingsoft/wps-office/office6/dicts/spellcheck/ -y &&

#Limpando repositórios de pacotes
sudo apt-get clean &&

#Atualizando pacotes
sudo apt-get update &&

#Atualizando versões
sudo apt-get upgrade -y &&

#Removendo pacotes que não serão mais utilizados
sudo apt autoremove -y &&

#Instalando Dropbox
git clone https://github.com/zant95/elementary-dropbox /tmp/elementary-dropbox && bash /tmp/elementary-dropbox/install.sh
