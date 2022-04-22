#!/bin/bash

# Official home-assistant installation guide:
# https://www.home-assistant.io/installation/raspberrypi
#
# Docker client as a prerequisite.
#
# Default port: 8123

docker run -d \
  --name homeassistant \
  --privileged \
  --restart=unless-stopped \
  -e TZ=Europe\Warsaw \
  -v /opt/services/homeassistant/config/:/config \
  --network=host \
  ghcr.io/home-assistant/home-assistant:stable
