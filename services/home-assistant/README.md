# Home Assistant


## Prerequisites
- Docker with Docker-compose

## Setup
To setup service simple run:
```bash
docker-compose up -d
```


## Devices integration
- Roomba iRoobot - simply folow up the configuration wizard steps.
- Mi devices - the easiest way is to import devices from MiHome (if already configured). In my case for:
  - **Xiaomi Air Purifier Mi Pro H** the model set on the Xiaomi CLoud was `zhimi.airpurifier.vb2` but for Home Assistant integration `zhimi.airpurifier.va1` worked fine.

## Info

Be default `Home Assistant` operates on port `8123`.
