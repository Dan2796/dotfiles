#!/bin/sh

# Sound
SOUND=$(pactl list sinks | grep 'Volume: f' | grep -o '[0-9]\+%' | head -1)

if pactl list sinks | grep -q 'Mute: yes' ; then
  MUTE=" ()"
else
  MUTE=""
fi

echo "^c#434c5e^^b#434c5e^^c#d8dee9^  $SOUND$MUTE"

