#!/bin/bash

# Script for random wallpaper generator

pkill .config/WallpaperRandomiser.sh

while true; do

   ls -d ~/Wallpapers/RandomCycleSciFi/* | shuf -n 1 | xargs feh --bg-fill

   sleep 5m

done

