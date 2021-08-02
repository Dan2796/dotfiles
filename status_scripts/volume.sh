#!/bin/sh

LHS_ARROW="^c#434c5e^^c#d8dee9^^b#434c5e^"
# Sound
SOUND=$(pactl list sinks | grep 'Volume: f' | grep -o '[0-9]\+%' | head -1)

if pactl list sinks | grep -q 'Mute: yes' ; then
  MUTE=" ()"
else
  MUTE=""
fi

echo "$LHS_ARROW  $SOUND$MUTE"

