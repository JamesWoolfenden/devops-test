#!/bin/sh
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install nodejs -y
sudo cp index.service /lib/systemd/system/index.service
sudo systemctl daemon-reload
sudo systemctl enable index
