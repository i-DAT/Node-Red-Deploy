#!/bin/sh

echo Starting....

apt-get update
apt-get install -y -q nodejs unzip npm

wget  https://github.com/node-red/node-red/archive/0.4.0.zip
unzip 0.4.0.zip

cp settings.js /root/node-red-0.4.0/settings.js
cp node.conf /etc/init/node.conf

cd ./node-red-0.4.0

npm install --production

npm install twitter senitiment wordpos xml2js fs.notify feedparser pushbullet nodemailer serialport imap irc redis mongodb pi-gpio firmata

service node start
