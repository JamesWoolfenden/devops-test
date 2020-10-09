#!/bin/sh
sudo apt-get update && sudo apt-get -y upgrade
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs -y
echo ---------------------
echo "NOW INSTALL SERVICE"
echo ---------------------
sudo cp index.service /etc/systemd/system/index.service
sudo chmod 644 /etc/systemd/system/index.service
echo ---------------------
echo "ENABLE SERVICE"
echo ---------------------
sudo systemctl daemon-reload
echo ---------------------
echo "Start SERVICE"
echo ---------------------
sudo systemctl start index.service
sudo systemctl status index.service
sudo systemd-analyze verify index.service
echo ---------------------
echo "Enable on reboot"
echo ---------------------
sudo systemctl enable index.service
