#!/bin/bash

# https://dev.to/elalemanyo/how-to-install-docker-and-docker-compose-on-raspberry-pi-1mo

# install dependencies
sudo apt-get install libffi-dev libssl-dev
sudo apt install python3-dev
sudo apt-get install -y python3 python3-pip

# install docker-compose
sudo pip3 install docker-compose

# enable docker-compose
sudo systemctl enable docker
