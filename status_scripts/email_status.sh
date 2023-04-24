#!/bin/sh

source /home/dan/dotfiles/status_scripts/nord_colour_scheme.sh

lhs_arrow="^c"$polar_3"^^c"$snow_1"^^b"$polar_3"^"

# Show syncing time
if [[ -f "/home/dan/dotfiles/status_scripts/status_files/workin.txt" ]]; then
  output=""
elif [[ -f "/home/dan/dotfiles/status_scripts/status_files/chillin.txt" ]]; then
  output=""
else 
  output="$lhs_arrow Not working"
fi

echo $output

