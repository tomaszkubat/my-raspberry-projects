#!/bin/bash

# As a prerequisite Docker should be installed first.
#
# detailed information about Portainer installation could be found here:
# https://www.wundertech.net/portainer-raspberry-pi-install-how-to-install-docker-and-portainer/

sudo docker pull portainer/portainer-ce

docker volume create portainer_data

docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
