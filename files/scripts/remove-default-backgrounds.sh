#!/bin/bash

set -ueo pipefail

# Removing wallpapers
rm -rf /usr/share/backgrounds/gnome/
rm -rf /usr/share/backgrounds/fedora-workstation/

# Removing wallpaper xml definitions
wallpaper_xmls=(
    adwaita.xml
    amber.xml
    blobs.xml
    curvy.xml
    dithered-sun.xml
    drool.xml
    flight.xml
    fold.xml
    futurecity.xml
    geometrics.xml
    glass-chip.xml
    glasscurtains.xml
    lcd-rainbow.xml
    map.xml
    mermaid.xml
    montclair.xml
    morphogenesis.xml
    neogeo.xml
    petals.xml
    pills.xml
    pixel-pusher.xml
    pixels.xml
    progress.xml
    sheet.xml
    swoosh.xml
    symbolic.xml
    tarka.xml
    tarkov-pills.xml
    vnc.xml
)

for xml_file in "${wallpaper_xmls[@]}"; do
    rm -f "/usr/share/gnome-background-properties/${xml_file}"
done
