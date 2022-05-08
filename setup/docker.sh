#!/bin/bash

# https://dev.to/elalemanyo/how-to-install-docker-and-docker-compose-on-raspberry-pi-1mo

sudo apt-get update && sudo apt-get upgrade

# install Docker
curl -sSL https://get.docker.com | sh

# add a non-root user (current user) to the Docker Group
sudo usermod -aG docker ${USER}

# Install Docker-Compose
sudo apt-get install libffi-dev libssl-dev
sudo apt install python3-dev
sudo apt-get install -y python3 python3-pip

sudo pip3 install docker-compose

sudo systemctl enable docker
