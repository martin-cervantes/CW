#!/bin/bash

echo
echo "* * * * * * * * * * * * * * * * * * *"
echo "* * *   StartUp Configuration   * * *"
echo "* * * * * * * * * * * * * * * * * * *"
echo

ORIGIN=$(pwd)

gsettings set org.gnome.settings-daemon.plugins.power button-power 'suspend'
gsettings get org.gnome.settings-daemon.plugins.power button-power

mkdir /home/mcervantes/misProgramas
chown -R mcervantes:mcervantes /home/mcervantes/misProgramas

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

add-apt-repository ppa:webupd8team/atom

echo
echo "* * * * * * * * * * * * * * * * * * *"
echo "* * *   Updating and Upgrading   * * *"
echo "* * * * * * * * * * * * * * * * * * *"
echo

apt update && apt upgrade -y && apt autoremove -y

echo
echo "* * * * * * * * * * * * * * * * * * * * *"
echo "* * *   Removing Programs Not Used   * * *"
echo "* * * * * * * * * * * * * * * * * * * * *"
echo

apt purge libreoffice* -y
apt purge openoffice* -y

echo
echo "* * * * * * * * * * * * * * * * * * *"
echo "* * *   Programs Installation   * * *"
echo "* * * * * * * * * * * * * * * * * * *"
echo

## JDownloader
echo "JDownloader"
sh JD2Setup_x64.sh

## Multi Writer USB Installation
echo "Multi Writer USB"
apt install gnome-multi-writer -y

## Wine - Windows Emulator
echo "Wine -- Windows Emulator"
apt install wine-stable -y

### Media Codecs
echo "Media Codecs"
apt install ubuntu-restricted-extras -y

### wps-office
echo "-> Installing WPS Office"
apt install wps-office -y

### web tools
echo "-> Installing LAMP"
apt install apache2 -y
apt install mysql-server -y
apt install phpmyadmin -y
apt install nodejs -y
apt install sqlite3 -y
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
chown -R mcervantes:mcervantes /var/www/html
ln -s /var/www/html /home/mcervantes/Desktop

## Webmin
echo "-> Installing Webmin"
apt install webmin -y

## MyApps
echo "-> Installing MyApps"
apt install rar unrar zip unzip -y
apt install gnome-control-center gnome-online-accounts -y
apt install docky gimp gparted screenfetch -y

### git
echo "-> Installing Git"
apt install git -y
git config --global user.name "Martin Cervantes"
git config --global user.email "cervantes.martine@gmail.com"
git --version
git config --list
echo
echo "* * *   SSH-key and SSH-agent   * * *"
echo
ssh-keygen -t rsa -b 4096 -C "cervantes.martine@gmail.com"
eval "$(ssh-agent -s)"
ssh-add /home/mcervantes/.ssh/id_rsa
echo
echo "* * *   R S A   K E Y   * * *"
echo
apt-get install xclip -y
xclip -sel clip < /home/mcervantes/.ssh/id_rsa.pub
echo
echo "The SSH key was copied to the clipboard."
echo
echo "Add the new SSH key to your GitHub account"
echo


## developing
### compilers and IDEs

echo
echo "* * *   G O O G L E   C H R O M E   * * *"
echo

apt install google-chrome-stable -y
apt install firefox -y

echo
echo "* * *   VNC-Viewer   * * *"
echo
cd $ORIGIN
apt install ./VNC-Viewer-*-Linux-x64.deb

echo
echo "* * *   A T O M :D   * * *"
echo
apt install atom -y

echo
echo "* * *   PyCharm   * * *"
echo
tar -xzvf $ORIGIN/pycharm-*.tar.gz -C /opt
cd /opt/pycharm-*/bin
sh pycharm.sh

#echo
#echo "* * *   NetBeans   * * *"
#echo
#cd $ORIGIN
#sh netbeans-8.2-linux.sh
#mkdir /home/mcervantes/misProgramas/NetBeansProjects
#echo "StartupWMClass=NetBeans IDE 8.2" \ | tee -a /usr/share/applications/netbeans-8.2.desktop

echo
echo "* * *   JavaFX SceneBuilder   * * *"
echo
cd $ORIGIN
apt install ./javafx_scenebuilder-2_0-linux-x64.deb

echo
echo "* * *   Android Studio   * * *"
echo
mkdir /home/mcervantes/misProgramas/SDK
mkdir /home/mcervantes/misProgramas/Android
tar -xzvf $ORIGIN/android-studio-ide-*-linux.tar.gz -C /opt
cd /opt/android-studio/bin
sh studio.sh

echo
echo "* * *   Arduino Studio   * * *"
echo
mkdir /home/mcervantes/misProgramas/Arduino
apt install arduino -y
chmod a+rw /dev/ttyACM0

echo
echo "* * * * * * * * * * * *"
echo "* * *   Cleaning   * * *"
echo "* * * * * * * * * * * *"
echo

apt autoclean

echo
echo "* * * * * * * * * * * * * * * * *"
echo "* * *   Finish! All done!   * * *"
echo "* * * * * * * * * * * * * * * * *"
echo
