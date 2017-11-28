#!/bin/bash

###################################
# StartUp Configuration
###################################

gsettings set org.gnome.settings-daemon.plugins.power button-power 'suspend'

###################################
# enabling Ubuntu software Repositories
###################################
#To enable main repository,

sudo add-apt-repository main

#To enable universe repository,

sudo add-apt-repository universe

#To enable multiverse repository,

sudo add-apt-repository multiverse

#To enable restricted repository,

sudo add-apt-repository restricted

###################################
# Add repositories
###################################

echo
echo "* * *   Installing repositories...   * * *"
echo
echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
cd /opt
sudo wget http://www.webmin.com/jcameron-key.asc
sudo apt-key add jcameron-key.asc

###################################
# Update and Upgrade
###################################

echo
echo "* * *   Updating and upgrading...   * * *"
echo
sudo apt update && sudo apt-get upgrade -y

###################################
# Remove programs not used
###################################
echo
echo "* * *   Removing programs not used...   * * *"
echo
sudo apt purge libreoffice* -y

###################################
# Installations
###################################

echo
echo "* * *   Installing programs...   * * *"
echo

mkdir ~/misProgramas

### wps-office
sudo dpkg -i wps-office_10.1.0.5707~a21_amd64.deb
sudo unzip es_ES.zip -d /opt/kingsoft/wps-office/office6/dicts

### web tools
echo "* * *   Installing LAMP   * * *"
sudo apt install apache2 -y
sudo apt install mysql-server -y
sudo apt install phpmyadmin -y
sudo mysql_secure_installation
sudo chown -R mcervantes:mcervantes /var/www/html
ln -s /var/www/html ~/Desktop
echo
echo "* * * Webmin * * *"
echo
sudo apt install webmin -y

### system
sudo apt install gnome-control-center gnome-online-accounts -y
sudo apt install docky gimp gparted screenfetch -y

### git
sudo apt-get install git -y
echo
echo "* * *   G I T   I N F O   * * *"
echo
git config --global user.name "Martin Cervantes"
git config --global user.email cervantes.martine@gmail.com
git --version
git config --list
echo
echo "* * *   Generating a new SSH key and adding it to the ssh-agent   * * *"
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
read

### java
sudo mkdir /opt/java

sudo tar xzf jdk-8u151-linux-x64.tar.gz -C /opt/java

echo "JAVA_HOME=/opt/java/jdk1.8.0_151
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin
export JAVA_HOME
export PATH" >> /etc/profile

## developing
### compilers and IDEs

echo
echo "* * *   Visual Studio Code   * * *"
echo
sudo dpkg -i code_1.17.2-1508162334_amd64.deb

echo
echo "* * *   NeatBeans   * * *"
echo
sudo ./netbeans-8.2-linux.sh
mkdir ~/misProgramas/NetBeansProjects
echo "StartupWMClass=NetBeans IDE 8.2" \ | sudo tee -a /usr/share/applications/netbeans-8.2.desktop 

echo
echo "* * *   JavaFX SceneBuilder   * * *"
echo
sudo dpkg -i javafx_scenebuilder-2_0-linux-x64.deb

echo
echo "* * *   Android Studio   * * *"
echo
sudo unzip android-studio-ide-162.4069837-linux.zip -d /opt
mkdir ~/misProgramas/SDK
mkdir ~/misProgramas/Android
cd /opt/android-studio/bin
sudo ./studio.sh

echo
echo "* * *   Arduino Studio   * * *"
echo
sudo tar -xf arduino-1.8.5-linux64.tar.xz -C /opt
mkdir ~/misProgramas/Arduino
cd /opt/arduino-1.8.5
./install.sh
mv ~/Desktop/arduino-arduinoide.desktop /opt/arduino-1.8.5

###################################
# Cleaning
###################################

echo
echo "* * *   Cleaning...   * * *"
sudo apt autoclean

###################################
# Configuring
###################################

echo
echo "* * *   Configuring...   * * *"
## java
sudo update-alternatives --install /usr/bin/java java /opt/java/jdk1.8.0_151/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac /opt/java/jdk1.8.0_151/bin/javac 1
sudo update-alternatives --install /usr/bin/javaws javaws /opt/java/jdk1.8.0_151/bin/javaws 1 

###################################
# Finish!
###################################

echo
echo "* * *   Finish! All done!   * * *"
echo
