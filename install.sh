#!/bin/sh
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install nodejs -y
sudo cp index.service /lib/systemd/system/index.service
sudo cp index.service /etc/systemd/system/index.service
sudo systemctl daemon-reload
sudo systemctl enable index.service
sudo systemctl start index.service
sudo systemctl status index.service
