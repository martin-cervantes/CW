#!/bin/bash

echo
echo "* * *   Ruby Installation. . .   * * *"
echo


sudo apt install curl git nodejs gcc make libssl-dev libreadline-dev zlib1g-dev libsqlite3-dev


git clone https://github.com/rbenv/rbenv.git ~/.rbenv


sudo echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
sudo echo 'eval "$(rbenv init -)"' >> ~/.bashrc


mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build


rbenv -v


rbenv install 2.6.5 --verbose


rbenv global 2.6.5


ruby -v
