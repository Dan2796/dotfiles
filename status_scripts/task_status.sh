#!/bin/sh

source /home/dan/dotfiles/status_scripts/nord_colour_scheme.sh

current_project=$(timew | head -1 | grep -o \".\*\" | sed 's/"//g')

grey_lhs="^c"$polar_4"^^c"$snow_1"^^b"$polar_4"^"
red_lhs="^c"$aurora_1"^^c"$polar_1"^^b"$aurora_1"^" # for red arrow

if [[ -f "/home/dan/dotfiles/status_scripts/status_files/chillin.txt" ]]; then
  output="$grey_lhs Chill."
elif [[ -f "/home/dan/dotfiles/status_scripts/status_files/workin.txt" ]]; then
  if [[ $current_project == "" ]]; then
    output="$red_lhs  pending..."
  else
    output="$grey_lhs  $current_project"
  fi
else
  output="$grey_lhs not currently working"
fi

echo $output

# next task - grep to separate out type, project and task - can then show 
# proj: and can use the deep / shallow in the time track hours for highlighting


