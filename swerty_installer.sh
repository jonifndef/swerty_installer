#!/bin/bash

SE_PATH=/usr/share/X11/xkb/symbols
EVDEV_PATH=/usr/share/X11/xkb/rules/

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
fi

SCRIPTPATH="$(cd "$(dirname "$0")" >/dev/null 2>&1; pwd -P)"

cp "$SCRIPTPATH"/se "$SE_PATH"/
cp "$SCRIPTPATH"/evdev.xml "$EVDEV_PATH"/
cp "$SCRIPTPATH"/evdev.lst "$EVDEV_PATH"/
