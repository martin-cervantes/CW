#!/bin/bash

echo
echo "* * *   JDK Installation. . .   * * *"
echo

sudo mkdir /opt/java

sudo tar -xzvf jdk-*-linux-x64.tar.gz -C /opt/java

echo "JAVA_HOME=/opt/java/jdk*
PATH=$PATH:$HOME/bin:/opt/java/jdk*/bin
export JAVA_HOME
export PATH" >> /etc/profile

source /etc/profile

echo
echo "* * *   Configuring. . .   * * *"
echo

sudo update-alternatives --install "/usr/bin/java" "java" "/opt/java/jdk*/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/opt/java/jdk*/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/opt/java/jdk*/bin/javaws" 1
# update-alternatives --set java /opt/java/jdk*/bin/java
# update-alternatives --set javac /opt/java/jdk*/bin/javac
# update-alternatives --set javaws /opt/java/jdk*/bin/javaws
# update-alternatives --config java
# update-alternatives --config javac
# update-alternatives --config javaws
# update-alternatives --list java
# update-alternatives --list javac
# update-alternatives --list javaws

echo
echo "* * *   All done !!   * * *"
echo
