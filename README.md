# libreELEC-lazy-xrandr

If you turn your libreELEC/Kodi box on when the TV is still off, no screen is
found and video output is disabled.

This script is run after boot.

If a screen is found, it just exits without doing anything.

If no screen screen is found, it will wait for a screen to be connected, then
run `xrandr` to enable video output with the screen default resolution.

## Install

Clone this repo somewhere in your `/storage` dir, then run the installer:

```
cd /storage
git clone https://github.com/masavini/libreELEC-lazy-xrandr
libreELEC-lazy-xrandr/./install.sh
```

The installer will add the following line to `/storage/.config/autostart.sh` script (and will create it if not existing):

```
( /path/to/repo/./libreELEC-lazy-xrandr.sh ) &
```
