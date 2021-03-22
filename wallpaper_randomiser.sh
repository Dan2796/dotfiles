#!/bin/bash

# Script for random wallpaper generator

pkill .config/wallpaper_randomiser.sh

while true; do

   ls -d ~/wallpapers/OtherWorlds/* \
         ~/wallpapers/Scythe/* \
         ~/wallpapers/SciFi/* \
         ~/wallpapers/CyberPunkCity/* \
         ~/wallpapers/GoT/* \
         ~/wallpapers/Fantasy/* \
   | shuf -n 1 | xargs feh --bg-fill

   sleep 5m

done

