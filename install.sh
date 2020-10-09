#!/bin/sh
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install nodejs -y
sudo apt-get install npm -y
npm install
sudo cp index.service /lib/systemd/system/index.service
sudo systemctl daemon-reload
sudo systemctl start index
sudo systemctl enable index
