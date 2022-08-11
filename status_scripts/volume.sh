#!/bin/sh

source /home/dan/dotfiles/status_scripts/nord_colour_scheme.sh

white_lhs_arrow="^b"$polar_3"^^c"$snow_1"^"
lhs_arrow="^c"$polar_3"^^c"$snow_1"^^b"$polar_3"^"

sound=$(pactl list sinks | grep 'Volume: f' | grep -o '[0-9]\+%' | head -1)

if pactl list sinks | grep -q 'Mute: yes' ; then
  mute=" ()"
else
  mute=" 🎶"
fi

if [[ -f "/home/dan/dotfiles/status_scripts/status_files/chillin.txt" ]]; then
  output="$lhs_arrow $sound$mute"
elif [[ -f "/home/dan/dotfiles/status_scripts/status_files/workin.txt" ]]; then
  output="$lhs_arrow $sound$mute" 
else 
  output="$white_lhs_arrow $sound$mute"
fi

echo $output
