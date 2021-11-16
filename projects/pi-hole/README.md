# pi-hole

## Info
This document briefly describes the simplistic setup of the `pi-hole` on my raspberry.

## How to setup `pi-hole`
1. Run the `pi-hole` docker container. To do this simply run the `docker_run.sh` script - this scrit comes from [pi-hole repository](https://github.com/pi-hole/docker-pi-hole/blob/master/docker_run.sh) and can be configured accordingly to your requirements.  
```bash
# start pihole container
chmod +x docker_run.sh
./docker_run.sh
```
2. Check if `pi-hole` is running - navigate to web console by providing <raspbery_id>/admin` address. To get/restart admin password use the commands bellow.
```bash
# get initial password
docker logs pihole | grep random

# change password
docker exec -it pihole /bin/bash
sudo pihole -a -p
```
3. Change the router configuration:  
    - set raspbery as primary DNS server.  
    - set static IP for rasbpery insted of using dynamic one. 


## Official documentation
For reference navige to:
- [pi-hole docker image documentation](https://hub.docker.com/r/pihole/pihole)
- [running pi-hile on docker](https://github.com/pi-hole/docker-pi-hole/#running-pi-hole-docker)

## FAQ:
- **Why I decided to use docker insted of the regular instalation?** In case of cleaning up packages and dependencies docker ensure pure functionality for that.
- **Why `docker-compose.yml` had not been used?** Unfortunatelly the docker-compose is not supported on the 32 bit architectre (at least seems to be my case).
- **My `pi-hole` is working but the route is not directed via the new DNS**?
    - Check router settings.
    - In some cases the DNS flush may be also required (on Windows `ifconfig /flushdns`).
- **How can I stop and restart the `pi-hole` container**? Simply tun the commands bellow:
```bash
# stop `pi-hole` container
docker stop pihole

# restart `pi-hole` container
docker restart pihole
```
