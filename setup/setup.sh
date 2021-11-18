#!/bin/bash

sudo apt-get update && sudo apt-get upgrade

# install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker Pi


# disable WiFi
echo -e "dtoverlay=disable-wifi\ndtoverlay=disable-bt" >> /boot/config.txt
