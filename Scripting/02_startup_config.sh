#!/bin/bash

echo
echo "* * * * * * * * * * * * * * * * * * *"
echo "* * *   StartUp Configuration   * * *"
echo "* * * * * * * * * * * * * * * * * * *"
echo

cd ..
ORIGIN=$(pwd)

gsettings set org.gnome.settings-daemon.plugins.power button-power 'suspend'
gsettings get org.gnome.settings-daemon.plugins.power button-power

mkdir /home/mcervantes/misProgramas

echo
echo "* * * * * * * * * * * * * * * * * * * * * * * * * * *"
echo "* * *   Enabling Ubuntu Software Repositories   * * *"
echo "* * * * * * * * * * * * * * * * * * * * * * * * * * *"
echo

#To enable main repository,
add-apt-repository main

#To enable universe repository,
add-apt-repository universe

#To enable multiverse repository,
add-apt-repository multiverse

#To enable restricted repository,
add-apt-repository restricted

echo
echo "* * * * * * * * * * * * * * * * * *"
echo "* * *   Adding Repositories   * * *"
echo "* * * * * * * * * * * * * * * * * *"
echo

echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
cd /opt
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | tee /etc/apt/sources.list.d/google-chrome.list

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"


echo
echo "* * * * * * * * * * * * * * * * * * *"
echo "* * *   Updating and Upgrading   * * *"
echo "* * * * * * * * * * * * * * * * * * *"
echo

sudo apt update && apt upgrade -y && apt autoremove -y

echo
echo "* * * * * * * * * * * * * * * * * * * * *"
echo "* * *   Removing Programs Not Used   * * *"
echo "* * * * * * * * * * * * * * * * * * * * *"
echo

sudo apt purge libreoffice* -y
sudo apt purge openoffice* -y

echo
echo "* * * * * * * * * * * * * * * * * * *"
echo "* * *   Programs Installation   * * *"
echo "* * * * * * * * * * * * * * * * * * *"
echo


## WPS Office
echo "===> WPS Office"
cd $ORIGIN
sudo apt install ./wps-office*amd64.deb -y
mv ~/Desktop/wps-office* /opt/kingsoft/wps-office/

## Multi Writer USB Installation
echo "===> Multi Writer USB"
sudo apt install gnome-multi-writer -y

## Wine - Windows Emulator
#echo "===> Wine -- Windows Emulator"
#sudo apt install wine-stable -y

### Media Codecs
echo "===> Media Codecs"
sudo apt install ubuntu-restricted-extras -y


### web tools
echo "===>  Installing LAMP"
sudo apt install apache2 -y
sudo apt install mysql-server -y
sudo apt install phpmyadmin -y
sudo apt install nodejs npm -y
sudo apt install python-pip -y
sudo apt install sqlite3 -y
mysql_secure_installation
echo "<!DOCTYPE html>
<html>
    <head>
        <title>PHP Info</title>
    </head>
    <body>
        <?php echo phpinfo(); ?>
    </body>
</html>" >> /var/www/html/index.php

ln -s /var/www/html /home/mcervantes/Desktop

## Webmin
echo "===> Installing Webmin"
sudo apt install webmin -y

## MyApps
echo "===> Installing MyApps"
sudo apt install rar unrar zip unzip -y
sudo apt install gnome-control-center gnome-online-accounts -y
sudo apt install docky gimp gparted screenfetch -y
sudo apt install gnome-shell-pomodoro -y
sudo apt install gnome-mines -y
sudo apt install vlc -y
sudo apt install mame* joystick jstest-gtk -y
cp -R roms ~/misProgramas/
cp -R snapshots ~/misProgramas/

### git
echo "===> Installing Git"
sudo apt install git -y
git config --global color.ui auto
git config --global user.name "Martin Cervantes"
git config --global user.email "cervantes.martine@gmail.com"
git --version
git config --list

sudo apt install xclip -y


## developing
### compilers and IDEs

echo
echo "* * *   G O O G L E   C H R O M E   * * *"
echo

sudo apt install google-chrome-stable -y
sudo apt install firefox -y

echo
echo "* * *   VNC-Viewer   * * *"
echo
cd $ORIGIN
sudo apt install ./VNC-Viewer-*-Linux-x64.deb

echo
echo "* * *   A T O M :D   * * *"
echo
sudo apt install ./atom-amd64.deb -y

echo
echo "* * *   Arduino Studio   * * *"
echo
mkdir /home/mcervantes/misProgramas/Arduino
sudo apt install arduino -y
chmod a+rw /dev/ttyACM0

echo
echo "* * *   PyCharm   * * *"
echo
tar -xzvf $ORIGIN/pycharm-*.tar.gz -C /opt
cd /opt/pycharm-*/bin
sh pycharm.sh

echo
echo "* * *   JavaFX SceneBuilder   * * *"
echo
cd $ORIGIN
sudo apt install ./javafx_scenebuilder-2_0-linux-x64.deb

echo
echo "* * *   Android Studio   * * *"
echo
mkdir /home/mcervantes/misProgramas/SDK
mkdir /home/mcervantes/misProgramas/Android
tar -xzvf $ORIGIN/android-studio-ide-*-linux.tar.gz -C /opt
cd /opt/android-studio/bin
sh studio.sh

#echo
#echo "* * *   NetBeans   * * *"
#echo
#cd $ORIGIN
#sh netbeans-8.2-linux.sh
#mkdir /home/mcervantes/misProgramas/NetBeansProjects
#echo "StartupWMClass=NetBeans IDE 8.2" \ | tee -a /usr/share/applications/netbeans-8.2.desktop

echo
echo "* * * * * * * * * * * *"
echo "* * *   Cleaning   * * *"
echo "* * * * * * * * * * * *"
echo

sudo chown -R mcervantes:mcervantes /opt
sudo chown -R mcervantes:mcervantes /var/www/html
sudo chown -R mcervantes:mcervantes ~/Desktop/html
sudo chown -R mcervantes:mcervantes /home/mcervantes/misProgramas

# SOLO PARA UBUNTU BUDGIE
# ROTATION LOCK SCREEN
# gsettings set org.gnome.settings-daemon.peripherals.touchscreen orientation-lock true

sudo apt autoclean

echo
echo "* * * * * * * * * * * * * * * * *"
echo "* * *   Finish! All done!   * * *"
echo "* * * * * * * * * * * * * * * * *"
echo
