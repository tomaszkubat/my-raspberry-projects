# my-raspbery-projects
My private stuff made on the Raspbery Pi.

![my RaspberyPi](/docs/my-raspbery.jpg)

## Info
This project contains information about the application of Raspbery Pi 4 for my private purposes.
The intention is to describe all the required configuration steps to enable simply from-zero-to-go setup.

## Raspberry initial setup

To make your Raspbery alive:
1. **Assembly** the Raspbery Pi:
    1. insert installation device (e.g. SD card od stick-drive),
    2. plug in the externals (keyboard, mouse, monitor),
    3. plug in the power cable - **Raspbery should start now**.
2. **Install the OS**. Now the NOOBS should booted - follow the instructions provided on the screen to install the OS (Raspbian 64 bit in my case).
3. **Post-instalation configuratioin**. After the installation, the system should be booted. Set up some post-installation configurations like language and time zone.
4. Now you are ready to use Raspbery!

## Software installation
After the installation of the OS you can make some additional configuration changes obviously.
Some hints could be found [here](https://github.com/tomaszkubat/my-raspbery-projects/edit/main/setup/README.md)

Also a lot of usefull stuff, like configurating and setting up remote access, can be found in the [official RaspberyPi documentation](https://www.raspberrypi.com/documentation/).

For my purposes I have to install `Docker` and `Portainer` to operate with containers.
Containers provive a clean and repetitive way to manage services installation.

To install docker rimply run `makefile` command:
```bash
make setup-docker
```

## Services
Currently a few services are in use:

- `pi-hole` - simple DNS server to block adds for devices in entire local subnet.
- `home-assistant` - an application of open-source home assistant to manage a broad range of home devices from various providers.

Information about the services installation could be found in the dedicated Readme files in the `services/<service-name>/Readme.md` directories.
