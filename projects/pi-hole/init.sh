#!/bin/bash

# run pi-hole using yaml configuration
docker-compose up -d

# get http://pi.hole/admin password
docker logs pihole | grep random
