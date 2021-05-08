#!/bin/bash

# Script for random wallpaper generator

pkill .config/wallpaper_randomiser.sh

while true; do

   ls -d ~/wallpapers/other_worlds/* \
         ~/wallpapers/scythe/* \
         ~/wallpapers/scifi/* \
         ~/wallpapers/cyber_punk/* \
         ~/wallpapers/game_of_thrones/* \
         ~/wallpapers/fantasy/* \
         ~/wallpapers/minimalist/* \
   | shuf -n 1 | xargs feh --bg-fill

   sleep 5m

done

