# libreELEC-lazy-xrandr

If you turn your libreELEC/Kodi box on when the TV is still off, no screen is
found and video output is disabled.

This script is run after boot.

If a screen is found, it just exits without doing anything.

If no screen screen is found, it will wait for a screen to be connected, then
run `xrandr` to enable video output with the screen default resolution.

## Install

Download `libreELEC-lazy-xrandr.sh` somewhere in your `/storage` dir, then add
it to `/storage/.config/autostart.sh` (create it if not existing):

```
cd /storage
wget 'https://raw.githubusercontent.com/masavini/libreELEC-lazy-xrandr/master/libreELEC-lazy-xrandr.sh'
chmod +x libreELEC-lazy-xrandr.sh
echo "( /storage/./libreELEC-lazy-xrandr.sh ) &> libreELEC-lazy-xrandr.log &" >> /storage/.config/autostart.sh
chmod +x /storage/.config/autostart.sh
```
