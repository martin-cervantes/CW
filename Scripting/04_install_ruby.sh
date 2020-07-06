#!/bin/bash

echo
echo "* * *   Ruby Installation. . .   * * *"
echo

apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates

curl -sL https://deb.nodesource.com/setup_12.x | -E bash -

apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(rbenv init -)"' >> ~/.bashrc

source ~/.bashrc

type rbenv

rbenv install

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

rbenv install -l

rbenv install 2.7.0

rbenv global 2.7.0

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

apt update && apt install --no-install-recommends yarn

yarn --version

apt install gem

gem install bundle

gem install bundler

gem install webpacker

gem install rails
