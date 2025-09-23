#!/bin/bash
sudo apt-get update
sudo apt-get install -y tightvncserver wget unzip
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.zip
unzip ngrok-v3-stable-linux-amd64.zip
chmod +x ngrok
./ngrok authtoken $1
echo "$2" | vncpasswd -f > vnc-passwd
tightvncserver :1 -geometry 1280x720 -depth 24
./ngrok tcp 5901
