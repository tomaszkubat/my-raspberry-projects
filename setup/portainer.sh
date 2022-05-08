#!/bin/bash

# As a prerequisite Docker should be installed first.
#
# detailed information about Portainer installation could be found here:
# https://www.wundertech.net/portainer-raspberry-pi-install-how-to-install-docker-and-portainer/

sudo docker pull portainer/portainer:linux-arm

sudo docker run --restart always -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer:linux-arm -v portainer_data:/data portainer/portainer-ce:linux-arm
