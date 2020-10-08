#!/bin/sh
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install nodejs -y
sudo apt-get install npm -y
sudo npm install forever -g
npm install
forever start index.js
