#!/bin/bash

# Script for random wallpaper generator

pkill .config/wallpaper_randomiser.sh

while true; do

   ls -d ~/wallpapers/minimalist/* \
   | shuf -n 1 | xargs feh --bg-fill

   sleep 5m

done

