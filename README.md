# my-raspbery-projects
My private projects made on the Raspbery Pi.

## Info
This project contains information about the application of Raspbery Pi 4 for my private purposes.
The intention is to describe all the required configuration steps to enable simply from-zero-to-go setup.

## Setup
The paragraph briefly describes the initial process of setting up the Raspbery.
A lot of usefull stuff, like configurating and setting up remote access, can be found in the [official RaspberyPi documentation](https://www.raspberrypi.com/documentation/).

### Make your Raspbery alive

1. **Assembly** the Raspbery Pi:
    1. Insert the micro SD card.
    2. Plug in hardware: keyboard, mouse, external monitor.
    3. Plug in the power cable - Raspbery should start now.
2. **Install the OS**. Now the NOOBS should booted - follow the instructions provided on the screen to install the Raspbian (in my case - Raspbian 32 bit with gui, without additional applications).
3. **Post-instalation configuratioin**. After the installation, the system should be booted. Set up some post-installation configurations like language and time zone.
4. Now you are ready to use Raspbery!

### Configure SSH
To configure follow the remote access to your Raspbery via `ssh` follow the instructions in the [RaspberyPi documentation - remote access](https://www.raspberrypi.com/documentation/computers/remote-access.html)

Generally:
```bash
sudo raspi-config
```
Navigate to the `Interface Options` and enable `ssh`.

### Change hostname
The raspi config can be edited to change the `hostname`"
```bash
sudo raspi-config
```

### Install additonal software

Install Docker on raspberypi: https://phoenixnap.com/kb/docker-on-raspberry-pi



## My projects
- `pi-hole` - simple DNS server to block adds for devices in entire local subnet.
