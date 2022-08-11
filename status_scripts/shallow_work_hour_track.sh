#!/bin/sh

source /home/dan/dotfiles/status_scripts/nord_colour_scheme.sh

# Arrow is given in the timetrace one so it can change colour
lhs_arrow="^b"$polar_4"^^c"$snow_1"^"
yellow_lhs_arrow="^c"$frost_2"^^b"$frost_2"^^c"$polar_1"^"
from_purple_lhs_arrow="^b"$aurora_5"^^c"$polar_4"^^c"$snow_1"^^b"$polar_4"^"
# note that it always rounds down - easier than trying to round for 
# individual seconds...
shallow_time=$(timew summary today shallow | tail -n 2 | xargs | awk -F ":" '{print $1 "h" $2 "m"}')

# correct to zero if it throws the no filtered data message
if [[ $shallow_time == *"filtered"* ]]; then
  shallow_time="0h00m"
fi

# need to add condition for if currently shallow working
if [[ -f "/home/dan/dotfiles/status_scripts/status_files/chillin.txt" ]]; then
  output=""
elif [[ $(timew | head -1 | grep -o "shallow") == "shallow" ]]; then
  output="$yellow_lhs_arrow "S:"$shallow_time"
elif [[ $(timew | head -1 | grep -o "deep") == "deep" ]]; then
  output="$from_purple_lhs_arrow "S:"$shallow_time"
else
  output="$lhs_arrow "S:"$shallow_time"
fi

echo $output
