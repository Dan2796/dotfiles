#!/bin/sh

source /home/dan/dotfiles/status_scripts/nord_colour_scheme.sh

grey_lhs_arrow="^c"$polar_4"^^c"$snow_1"^^b"$polar_4"^"

sound=$(pactl list sinks | grep 'Volume: f' | grep -o '[0-9]\+%' | head -1)

if pactl list sinks | grep -q 'Mute: yes' ; then
  mute=" ()"
else
  mute=" 🎶"
fi

output="$grey_lhs_arrow $sound$mute"

echo $output
