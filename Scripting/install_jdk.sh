#!/bin/bash

ORIGIN=$(pwd)

###################################
# Installation
###################################
sudo mkdir /opt/java
echo "Extracting JDK..."
sudo tar -xzf $ORIGIN/jdk-8u162-linux-x64.tar.gz -C /opt/java

echo "JAVA_HOME=/opt/java/jdk1.8.0_162
PATH=$PATH:$HOME/bin:/opt/java/jdk1.8.0_162/bin
export JAVA_HOME
export PATH" >> /etc/profile

###################################
# Configuring
###################################

echo
echo "* * *   Configuring...   * * *"
## java
sudo update-alternatives --install /usr/bin/java java /opt/java/jdk1.8.0_162/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac /opt/java/jdk1.8.0_162/bin/javac 1
sudo update-alternatives --install /usr/bin/javaws javaws /opt/java/jdk1.8.0_162/bin/javaws 1

###################################
# Finish!
###################################

echo
echo "* * *   Finish! All done!   * * *"
echo
