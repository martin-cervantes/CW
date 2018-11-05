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

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

echo
echo "* * * * * * * * * * * * * * * * * * *"
echo "* * *   Updating and upgrading   * * *"
echo "* * * * * * * * * * * * * * * * * * *"
echo

# sudo apt update && sudo apt upgrade -y
sudo apt update

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

### wps-office
echo "-> Installing WPS Office"
sudo dpkg --install $ORIGIN/wps-office_10.1.0.6757_amd64.deb
sudo unzip $ORIGIN/es_ES.zip -d /opt/kingsoft/wps-office/office6/dicts

### web tools
echo "-> Installing LAMP"
sudo apt install apache2 -y
sudo apt install mysql-server -y
sudo apt install phpmyadmin -y
sudo apt install nodejs -y
sudo mysql_secure_installation
echo "<!DOCTYPE html>
<html>
    <head>
        <title>PHP Info</title>
    </head>
    <body>
        <?php echo phpinfo(); ?>
    </body>
</html>" >> /var/www/html/index.php
sudo chown -R mcervantes:mcervantes /var/www/html
ln -s /var/www/html ~/Desktop

## Webmin
echo "-> Installing Webmin"
sudo apt install webmin -y

## MyApps
echo "-> Installing MyApps"
sudo apt install gnome-control-center gnome-online-accounts -y
sudo apt install docky gimp gparted screenfetch -y

### git
echo "-> Installing Git"
sudo apt install git -y
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
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
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
sudo apt install google-chrome-stable
sudo apt install firefox

echo
echo "* * *   A T O M :D   * * *"
echo
sudo dpkg --install $ORIGIN/atom-amd64.deb

echo
echo "* * *   NeatBeans   * * *"
echo
cd $ORIGIN
sudo ./netbeans-8.2-linux.sh
mkdir ~/misProgramas/NetBeansProjects
echo "StartupWMClass=NetBeans IDE 8.2" \ | sudo tee -a /usr/share/applications/netbeans-8.2.desktop

echo
echo "* * *   JavaFX SceneBuilder   * * *"
echo
sudo dpkg --install $ORIGIN/javafx_scenebuilder-2_0-linux-x64.deb

echo
echo "* * *   Android Studio   * * *"
echo
sudo unzip $ORIGIN/android-studio-ide-181.5056338-linux.zip -d /opt
mkdir ~/misProgramas/SDK
mkdir ~/misProgramas/Android
cd /opt/android-studio/bin
sudo ./studio.sh

echo
echo "* * *   Arduino Studio   * * *"
echo
sudo tar -xf $ORIGIN/arduino-1.8.7-linux64.tar.xz -C /opt
mkdir ~/misProgramas/Arduino
cd /opt/arduino-1.8.7
./install.sh
mv ~/Desktop/arduino-arduinoide.desktop /opt/arduino-1.8.7

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
