#!/bin/bash

#Limpando repositórios de pacotes
sudo apt-get clean &&

#Atualizando pacotes
sudo apt-get update &&

#Atualizando versões
sudo apt-get upgrade -y &&

#Atualizando SO
sudo apt-get dist-upgrade -y &&

#Instalando curl'
echo 'Instalando curl' 
sudo apt install curl -y &&

#Instalando Git
echo 'Instalando git' 
sudo apt install git -y &&

#Configurando usuario do GIT
echo "Qual seu nome de usuario GIT?"
read git_config_user_name
git config --global user.name "$git_config_user_name"
clear

#Configurando e-mail do GIT
echo "Digite o email que deseja configurar para o GIT ?"
read git_config_user_email
git config --global user.email $git_config_user_email
clear

#Instalando NVM
echo 'Instalando NVM'
sh -c "$(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash)" &&
source ~/.bashrc &&
source ~/.profile &&
nvm install 14.15.4 &&
nvm alias default 14.15.4 &&

#Instalando o Yarn
echo 'Instalando Yarn'
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list &&
sudo apt update &&
sudo apt install --no-install-recommends yarn -y &&

#Instalando Oracle JDK 8
echo 'Instalando Oracle JDK8'
sudo add-apt-repository ppa:openjdk-r/ppa -y &&
sudo apt-get update &&
sudo apt-get install openjdk-8-jdk &&
echo 'Escolha a versão do java que deseja usar'
sudo update-alternatives --config java &&

#Instalando Libs para o Android Studio
echo 'Instalando libs do Android Studio'
sudo apt-get install gcc-multilib lib32z1 lib32stdc++6 &&

#Instalando React Native
echo 'Instalando React Native'
npm install -g react-native &&
npm install -g react-native-cli &&

#Instalando ReactJS
echo 'Instalando ReactJS'
yarn global add create-react-app &&

#Instalando Visual Studio Code
echo 'Instalando Visual Studio Code'
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" &&
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - &&
sudo apt-get update &&
sudo apt-get install code &&

#Instalando Zoom
echo 'Instalando Zoom'
wget https://zoom.us/client/latest/zoom_amd64.deb &&
sudo dpkg -i zoom_amd64.deb &&

#Instalando Slack
echo 'Instalando Slack'
sudo apt-get install slack-desktop -y &&

#Instalando VirtualBox
echo 'Instalando Virtualbox'
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" >> /etc/apt/sources.list.d/virtualbox.list' &&
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add - &&
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add - &&
sudo apt-get update &&
sudo apt-get install virtualbox -y &&
echo 'Qual seu nome de usuario'
read user_name
sudo adduser $user_name vboxusers &&

#Instalando o Google Chrome
echo 'Instalando Google Chrome'
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' &&
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - &&
sudo apt-get update &&
sudo apt-get install google-chrome-stable -y &&

#Instalando VLC
echo 'Instalando VLC'
sudo add-apt-repository ppa:videolan/stable-daily -y &&
sudo add-apt-repository ppa:nicola-onorata/desktop -y &&
sudo apt-get update -y &&
sudo apt-get install vlc -y &&

#Instalando Franz
echo 'Instalando Franz'
wget https://github.com/meetfranz/franz/releases/download/v5.6.1/franz_5.6.1_amd64.deb &&
sudo dpkg -i franz_5.6.1_amd64.deb -y &&

#Instalando Dropbox
echo 'Instalando Dropbox'
wget "http://www.dropbox.com/download/?plat=lnx.x86_64" -O dropbox.tar.gz &&
sudo tar -xvf dropbox.tar.gz -C /opt/ &&
sudo mv /opt/.dropbox-dist/ /opt/dropbox &&
sudo ln -sf /opt/dropbox/dropboxd /usr/bin/dropbox &&

#Instalando o descompactadores
echo 'Instalando Descompactadores'
sudo apt-get install zip unzip rar unrar -y &&

#Instalando Spotify
echo 'Instalando Spotify' 
snap install spotify &&

#Instalando Shotwell Photo Manager
sudo add-apt-repository ppa:yg-jensge/shotwell -y && sudo apt update && sudo apt install shotwell -y &&

#Instalando Tema de Ícones Papirus
echo 'Instalando Tema de Ícones Papirus'
sudo add-apt-repository ppa:varlesh-l/papirus-pack -y &&
sudo apt-get update &&
sudo apt-get install papirus-gtk-icon-theme -y &&

#Removendo Libre Office
sudo apt-get remove --purge libreoffice* -y &&

#Instalando WPS Office
echo 'Instalando WPS Office'
wget http://kdl.cc.ksosoft.com/wps-community/download/6757/wps-office_10.1.0.6757_x86_64.tar.xz -O wpsoffice.tar.xz &&
sudo tar Jxf wpsoffice.tar.xz -C /opt/ &&
sudo mv /opt/wps*/ /opt/wpsoffice &&

#Instalando TeamViewer
echo 'Instalando TeamViewer'
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.tar.xz -O teamviewer.tar.xz &&
sudo tar -xJf teamviewer.tar.xz &&
sudo mv ~/teamviewer /opt &&
sudo ln -sf /opt/teamviewer/teamviewer /usr/bin/teamviewer &&

#Instalando AnyDesk
echo 'Instalando AnyDesk'
wget https://download.anydesk.com/linux/anydesk_6.0.1-1_amd64.deb -O anydesk.deb &&
sudo apt install ./anydesk.deb &&

#Limpando repositórios de pacotes
sudo apt-get clean &&

#Atualizando pacotes
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade && sudo apt autoremove -y
