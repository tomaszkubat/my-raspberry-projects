# my-raspbery-projects
My private projects made on the Raspbery Pi.

![my RaspberyPi](/docs/my-raspbery.jpg)

## Info
This project contains information about the application of Raspbery Pi 4 for my private purposes.
The intention is to describe all the required configuration steps to enable simply from-zero-to-go setup.

## Setup
The paragraph briefly describes the initial process of setting up the Raspbery.

**Make your Raspbery alive**
1. **Assembly** the Raspbery Pi:
    1. Insert the micro SD card.
    2. Plug in hardware: keyboard, mouse, external monitor.
    3. Plug in the power cable - Raspbery should start now.
2. **Install the OS**. Now the NOOBS should booted - follow the instructions provided on the screen to install the Raspbian (in my case - Raspbian 32 bit with gui, without additional applications).
3. **Post-instalation configuratioin**. After the installation, the system should be booted. Set up some post-installation configurations like language and time zone.
4. Now you are ready to use Raspbery!

After the installation of the OS you can make some additional configuration changes obviously.
Some hints could be found [here](https://github.com/tomaszkubat/my-raspbery-projects/edit/main/setup/README.md)

Also a lot of usefull stuff, like configurating and setting up remote access, can be found in the [official RaspberyPi documentation](https://www.raspberrypi.com/documentation/).

## My projects
- `home-assistant` - an application of open-source home assistant.
- `pi-hole` - simple DNS server to block adds for devices in entire local subnet.
