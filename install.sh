#! /usr/bin/env bash

REPO_DIR="$(cd "${0%/*}" && pwd)"

echo "( ${REPO_DIR}/./libreELEC-lazy-xrandr.sh ) &" >> /storage/.config/autostart.sh
