#!/bin/sh

BATPERC=$(upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | xargs echo)

BATSTATE=$(upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full" | xargs echo)

DATE=$(date +"%a, %d %b, %H:%M")

xsetroot -name "$BATPERC $BATSTATE | $DATE"
