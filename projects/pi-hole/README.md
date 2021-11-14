# pi-hole

## Info
This document briefly describes the simplistic application of the `pi-hole` setup on my raspberry.

## Usefull commands

- To **start `pi-hole`** on docker container simply run:
```bash
chmod +x docker_run.sh
./docker_run.sh
```

- Get **initial password** for `pi-hole` admin:
```bash
docker logs pihole | grep random
```

- **Change password** for `pi-hole` admin:
```bash
# get into running container
docker exec -it pihole /bin/bash

# reset the `pi-hole` password
sudo pihole -a -p
```

- **Stop and restart** docker container:
```bash
# stop `pi-hole` container
docker stop pihole

# restart `pi-hole` container
docker restart pihole
```

## Official documentation
For reference navige to:
- [pi-hole docker image documentation](https://hub.docker.com/r/pihole/pihole)
- [running pi-hile on docker](https://github.com/pi-hole/docker-pi-hole/#running-pi-hole-docker)

## FAQ:
- **Why I decided to use docker insted of the regular instalation?** In case of cleaning up packages and dependencies docker ensure pure functionality for that.
- **Why `docker-compose.yml` had not been used?** Unfortunatelly the docker-compose is not supported on the 32 bit architectre (at least seems to be my case).
- **How to check if my `pi-hole` is working?** Simply navigate to the admin console `<your_raspbery_ip>/admin` and log in.
- **My `pi-hole` is working but the route is not directed via the new DNS**?
    - Check router settings.
    - In some cases the DNS flush may be also required (on Windows `ifconfig /flushdns`).
