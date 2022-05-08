#!/bin/bash

# detailed information about Docker installation could be found here:
# https://www.wundertech.net/portainer-raspberry-pi-install-how-to-install-docker-and-portainer/

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker Pi
