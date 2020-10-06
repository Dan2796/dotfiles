#!/bin/bash

# Script for random wallpaper generator

pkill .config/WallpaperRandomiser.sh

while true; do

   ls -d ~/Wallpapers/OtherWorlds/* \
         ~/Wallpapers/Scythe/* \
         ~/Wallpapers/SciFi/* \
         ~/Wallpapers/CyberPunkCity/* \
         ~/Wallpapers/GoT/* \
         ~/Wallpapers/Fantasy/* \
   | shuf -n 1 | xargs feh --bg-fill

   sleep 5m

done

