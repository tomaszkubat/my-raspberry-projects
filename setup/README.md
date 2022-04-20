
# Setup documentation

This document describes additional (optional) configuration steps.

## Network

### disable WiFi
echo -e "dtoverlay=disable-wifi\ndtoverlay=disable-bt" >> /boot/config.txt

### Change hostname
The raspi config can be edited to change the `hostname`"
```bash
sudo raspi-config
```

### Provide raspberry with the static private IP (IPv4)

1. Check whether **DHCPCD is already activated**:
```bash
sudo service dhcpcd status
```

If not, activate DHCPCD:
```bash
sudo service dhcpcd start
sudo systemctl enable dhcpcd
```
2. **Add static `eth0` entries in `/etc/dhcpcd.conf`** file.
3. Reboot raspberry.

## Connectivity

### Configure SSH
To configure remote access to your Raspbery via `ssh` follow the instructions in the [RaspberyPi documentation - remote access](https://www.raspberrypi.com/documentation/computers/remote-access.html)

Generally:
```bash
sudo raspi-config
```
Navigate to the `Interface Options` and enable `ssh`. Done!

### Setup RDP
It's possible to connect to raspbery from the Windows machine. 
To do so simple install end enable the `xrdp`.

```bash
sudo apt install xrdp
sudo systemctl enable xrdp
```

### Install the graphic environment
If you have already installed the OS without `GUI` there is no problem to install it layter.
To install graphic environment follow the steps bellow:
```bash
# update, upgrade and reboot
sudo apt update && sudo apt upgrade && sudo apt dist-upgrade && sudo reboot
# install Xorg
sudo apt install xserver-xorg -y
# install PIXEL (default) desktop environment
sudo apt install raspberrypi-ui-mods -y
# reboot
sudo reboot
```

## Software

### Docker
[Install Docker on raspberypi](https://phoenixnap.com/kb/docker-on-raspberry-pi)
