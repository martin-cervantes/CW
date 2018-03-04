#!/bin/bash

echo
echo "* * * * * * * * * * * * * * * * * * *"
echo "* * *   StartUp Configuration   * * *"
echo "* * * * * * * * * * * * * * * * * * *"
echo

ORIGIN=$(pwd)

gsettings set org.gnome.settings-daemon.plugins.power button-power 'suspend'
gsettings get org.gnome.settings-daemon.plugins.power button-power

mkdir ~/misProgramas
sudo chown -R mcervantes:mcervantes ~/misProgramas

echo
echo "* * * * * * * * * * * * * * * * * * * * * * * * * * *"
echo "* * *   Enabling Ubuntu Software Repositories   * * *"
echo "* * * * * * * * * * * * * * * * * * * * * * * * * * *"
echo

#To enable main repository,
sudo add-apt-repository main

#To enable universe repository,
sudo add-apt-repository universe

#To enable multiverse repository,
sudo add-apt-repository multiverse

#To enable restricted repository,
sudo add-apt-repository restricted

echo
echo "* * * * * * * * * * * * * * * * * *"
echo "* * *   Adding Repositories   * * *"
echo "* * * * * * * * * * * * * * * * * *"
echo

echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
cd /opt
sudo wget http://www.webmin.com/jcameron-key.asc
sudo apt-key add jcameron-key.asc
echo "press  [ENTER]  to continue"
read continue

echo
echo "* * * * * * * * * * * * * * * * * * *"
echo "* * *   Updating and upgrading   * * *"
echo "* * * * * * * * * * * * * * * * * * *"
echo

sudo apt update && sudo apt upgrade -y
echo "press  [ENTER]  to continue"
read continue

echo
echo "* * * * * * * * * * * * * * * * * * * * *"
echo "* * *   Removing Programs Not Used   * * *"
echo "* * * * * * * * * * * * * * * * * * * * *"
echo

sudo apt purge libreoffice* -y
echo "press  [ENTER]  to continue"
read continue

echo
echo "* * * * * * * * * * * * * * * * * * *"
echo "* * *   Programs Installation   * * *"
echo "* * * * * * * * * * * * * * * * * * *"
echo

### wps-office
echo "-> Installing WPS Office"
sudo dpkg --install $ORIGIN/wps-office_10.1.0.5707~a21_amd64.deb
sudo unzip $ORIGIN/es_ES.zip -d /opt/kingsoft/wps-office/office6/dicts
echo "press  [ENTER]  to continue"
read continue

### web tools
echo "-> Installing LAMP"
sudo apt install apache2 -y
sudo apt install mysql-server -y
sudo apt install phpmyadmin -y
sudo mysql_secure_installation
sudo chown -R mcervantes:mcervantes /var/www/html
ln -s /var/www/html ~/Desktop
echo "press  [ENTER]  to continue"
read continue

## Webmin
echo "-> Installing Webmin"
sudo apt install webmin -y
echo "press  [ENTER]  to continue"
read continue

## MyApps
echo "-> Installing MyApps"
sudo apt install gnome-control-center gnome-online-accounts -y
sudo apt install docky gimp gparted screenfetch -y
echo "press  [ENTER]  to continue"
read continue

### git
echo "-> Installing Git"
sudo apt install git -y
echo
echo "* * *   G I T   I N F O   * * *"
echo
git config --global user.name "Martin Cervantes"
git config --global user.email "cervantes.martine@gmail.com"
git --version
git config --list
echo
echo "* * *   SSH-key and SSH-agent   * * *"
echo
ssh-keygen -t rsa -b 4096 -C "cervantes.martine@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
echo
echo "* * *   R S A   K E Y   * * *"
echo
cat ~/.ssh/id_rsa.pub
echo
echo "Add the new SSH key to your GitHub account"
echo
echo "press  [ENTER]  to continue"
read continue

## developing
### compilers and IDEs

echo
echo "* * *   A T O M :D   * * *"
echo
sudo dpkg --install $ORIGIN/atom-amd64.deb
echo "press  [ENTER]  to continue"
read continue

echo
echo "* * *   NeatBeans   * * *"
echo
cd $ORIGIN
sudo ./netbeans-8.2-linux.sh
mkdir ~/misProgramas/NetBeansProjects
echo "StartupWMClass=NetBeans IDE 8.2" \ | sudo tee -a /usr/share/applications/netbeans-8.2.desktop
echo "press  [ENTER]  to continue"
read continue

echo
echo "* * *   JavaFX SceneBuilder   * * *"
echo
sudo dpkg --install $ORIGIN/javafx_scenebuilder-2_0-linux-x64.deb
echo "press  [ENTER]  to continue"
read continue

echo
echo "* * *   Android Studio   * * *"
echo
sudo unzip $ORIGIN/android-studio-ide-171.4443003-linux.zip -d /opt
mkdir ~/misProgramas/SDK
mkdir ~/misProgramas/Android
cd /opt/android-studio/bin
sudo ./studio.sh
echo "press  [ENTER]  to continue"
read continue

echo
echo "* * *   Arduino Studio   * * *"
echo
sudo tar -xf $ORIGIN/arduino-1.8.5-linux64.tar.xz -C /opt
mkdir ~/misProgramas/Arduino
cd /opt/arduino-1.8.5
./install.sh
mv ~/Desktop/arduino-arduinoide.desktop /opt/arduino-1.8.5
echo "press  [ENTER]  to continue"
read continue

echo
echo "* * * * * * * * * * * *"
echo "* * *   Cleaning   * * *"
echo "* * * * * * * * * * * *"
echo

sudo apt autoclean

echo
echo "* * * * * * * * * * * * * * * * *"
echo "* * *   Finish! All done!   * * *"
echo "* * * * * * * * * * * * * * * * *"
echo
