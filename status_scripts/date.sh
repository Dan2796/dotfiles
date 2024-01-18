#!/bin/sh

source /home/dan/dotfiles/status_scripts/nord_colour_scheme.sh

lhs_arrow="^c"$polar_1"^^c"$snow_1"^^b"$polar_1"^"

# europe time. manual adjust because it's easier
#formatted_date=$(date -d "+ 1 hour" +"%a, %d %b, %H:%M")
formatted_date=$(date +"%a, %d %b, %H:%M")

echo "$lhs_arrow   $formatted_date "
