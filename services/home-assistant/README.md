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
- Mi devices - the easiest way is to import devices from MiHome (if already configured). In my case I had to use current mappings to make devices working.

| Device name | Xiaomi Cloud device model | Home Assistant device model |
|---|---|---|
| Xiaomi Air Purifier Mi Pro H | zhimi.airpurifier.vb2 | zhimi.airpurifier.va1 |
| Xiaomi 360 Camera | chuangmi.camera.026c02 | chuangmi.plug.v3 |


## Info

Be default `Home Assistant` operates on port `8123`.
