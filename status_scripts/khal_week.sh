#!/bin/sh

source /home/dan/dotfiles/status_scripts/nord_colour_scheme.sh

lhs_arrow="^c"$polar_1"^^c"$snow_1"^^b"$polar_1"^"

week=$(khal list now -df 'SKIPME' | grep -v SKIPME | grep -v '^ ' | grep Week | head -n 1 | sed -r 's/^.{2}//')

echo "$lhs_arrow $week"
