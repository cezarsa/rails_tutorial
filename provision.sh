#!/usr/bin/env bash

curl -L https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm use --install 2.0.0
rvm use 2.0.0@rails_tutorial --create

[[ `id -un` == 'vagrant' ]] && echo "source ~/.profile" >> ~/.bash_profile

gem install rails --no-ri --no-rdoc

[[ `which apt-get` ]] && sudo apt-get update && sudo apt-get install git nodejs -y
[[ `which brew` ]] && brew install git nodejs


