#!/bin/sh

SOUND=$(pactl list sinks | grep 'Volume: f' | grep -o '[0-9]\+%' | head -1)

BATPERC=$(upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | xargs echo)

BATSTATE=$(upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full" | xargs echo)

DATE=$(date +"%a, %d %b, %H:%M")

xsetroot -name "sound: $SOUND | $BATPERC $BATSTATE | $DATE"
