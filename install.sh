#!/bin/sh
sudo apt update
sudo apt install nodejs -y
sudo apt install npm -y
sudo npm install forever -g
npm install
forever start index.js
