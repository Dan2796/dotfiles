#!/bin/sh

WHITE_LHS_ARROW="^b#434c5e^^c#d8dee9^"
LHS_ARROW="^c#434c5e^^c#d8dee9^^b#434c5e^"

# Sound
SOUND=$(pactl list sinks | grep 'Volume: f' | grep -o '[0-9]\+%' | head -1)

if pactl list sinks | grep -q 'Mute: yes' ; then
  MUTE=" ()"
else
  MUTE=" 🎶"
fi

if [[ -f "/home/dan/dotfiles/status_scripts/timetrace_status.txt" ]]; then
  OUTPUT="$LHS_ARROW $SOUND$MUTE"
elif [[ -f "/home/dan/dotfiles/status_scripts/hide_email.txt" ]]; then
  OUTPUT="$LHS_ARROW $SOUND$MUTE" # if colouring chill
  #OUTPUT="$WHITE_LHS_ARROW $SOUND$MUTE"
else 
  OUTPUT="$WHITE_LHS_ARROW $SOUND$MUTE"
fi

echo $OUTPUT

