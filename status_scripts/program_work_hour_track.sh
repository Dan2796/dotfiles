#!/bin/sh

source /home/dan/dotfiles/status_scripts/nord_colour_scheme.sh

# Arrow is given in the timetrace one so it can change colour
lhs_arrow="^b"$polar_4"^^c"$snow_1"^"
teal_lhs_arrow="^c"$frost_3"^^b"$frost_3"^^c"$polar_4"^"
from_red_lhs_arrow="^b"$aurora_1"^^c"$polar_4"^^c"$snow_1"^^b"$polar_4"^"

# note that it always rounds down - easier than trying to round for 
# individual seconds...
program_time=$(timew summary today programming | tail -n 2 | xargs | awk -F ":" '{print $1 "h" $2 "m"}')

# correct to zero if it throws the no filtered data message
if [[ $program_time == *"filtered"* ]]; then
  program_time="0h00m"
fi

# need to add condition for if currently shallow working
if [[ -f "/home/dan/dotfiles/status_scripts/status_files/chillin.txt" ]]; then
  output=""
elif [[ $(timew | head -1 | grep -o "programming") == "programming" ]]; then
  output="$teal_lhs_arrow "P:"$program_time"
elif [[ $(timew | head -1 | grep -o "deep") == "deep" ]]; then
  output="$lhs_arrow "P:"$program_time"
elif [[ $(timew | head -1 | grep -o "shallow") == "shallow" ]]; then
  output="$lhs_arrow "P:"$program_time"
elif [[ -f "/home/dan/dotfiles/status_scripts/status_files/workin.txt" ]]; then
  output="$from_red_lhs_arrow "P:"$program_time"
else
  output="$lhs_arrow "P:"$program_time"
fi

echo $output
