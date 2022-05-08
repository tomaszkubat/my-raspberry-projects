
# Setup documentation

This document describes additional (optional) configuration steps.

Some steps, like setting proper hostname and disabling the WiFi can be done during OS image creation by `Raspberry Pi Imager`.

## Network and connectivity
### Enable SSH
To configure remote access to your Raspbery via `ssh` follow the instructions in the [RaspberyPi documentation - remote access](https://www.raspberrypi.com/documentation/computers/remote-access.html)

Generally:
```bash
sudo raspi-config
```
Navigate to the `Interface Options` and enable `ssh`. Done!

### Disable WiFi
```bash
echo -e "dtoverlay=disable-wifi\ndtoverlay=disable-bt" >> /boot/config.txt
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
2. **Add static `eth0` entries in `/etc/dhcpcd.conf`** file, like:
```bash
interface eth0
static ip_address=192.168.1.XX/24
static routers=192.168.1.1
static domain_name_servers=192.168.1.1
```

3. Reboot raspberry.
