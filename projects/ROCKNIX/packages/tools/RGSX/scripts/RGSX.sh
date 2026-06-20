#!/bin/sh

if [ ! -d "/storage/roms/ports/RGSX" ]; then
  mkdir -p /storage/roms/ports
  cp -a /usr/local/share/RGSX /storage/roms/ports
fi

. /etc/profile

set_kill set "-9 python3"

sway_fullscreen "python3" &

cd /storage/roms/ports/RGSX

python3 __main__.py
