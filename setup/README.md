
# Setup documentation

This document describes additional (optional) configuration steps.

## Provide raspberry with the static private IP (IPv4)

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


## Install the graphic environment
To install the graphic environment follow the steps bellow:
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

## Connect to raspbery by RDP

```bash
sudo apt install xrdp
sudo systemctl enable xrdp
```
