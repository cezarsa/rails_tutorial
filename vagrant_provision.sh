#!/usr/bin/env bash

curl -L https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm use --install 2.0.0
rvm use 2.0.0@rails_tutorial --create

gem install rails --no-ri --no-rdoc

sudo apt-get install git -y
