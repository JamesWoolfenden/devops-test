#!/bin/sh
apt install node
apt install npm
npm install forever -g
npm install
forever start index.js
