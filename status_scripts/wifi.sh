#!/bin/sh

source /home/dan/dotfiles/status_scripts/nord_colour_scheme.sh

lhs_arrow="^c"$polar_3"^^c"$snow_1"^^b"$polar_3"^"

wifi="$(nmcli | grep -o 'connected to .\+' | sed 's/connected to / /g')"

echo "$lhs_arrow $wifi"
