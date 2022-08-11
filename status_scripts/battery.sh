#!/bin/sh

source /home/dan/dotfiles/status_scripts/nord_colour_scheme.sh

bat_num=$(upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | sed 's/[^0-9,.]*//g' | awk '{printf("%.0f\n", $1)}')

bat_state=$(upower -i $(upower -e | grep 'BAT') | grep -E "state" | 
  sed 's/\ //g' | sed 's/state://g')

bat_time=$(upower -i $(upower -e | grep 'BAT') | grep -E "time\ to" |
  sed 's/\ //g' | sed 's/timetoempty://g' | sed 's/timetofull://g' | sed 's/hours/ hrs/g' | sed 's/minutes/ mins/g' )

if (( $bat_num <= 20 )); then
  bat_sym=""
elif (( $bat_num <= 40 )); then
  bat_sym=""
elif (( $bat_num <= 60 )); then
  bat_sym=""
elif (( $bat_num <= 95 )); then
  bat_sym=" "
elif (( $bat_num > 95 )); then
  bat_sym=""
else 
  bat_num=""
fi

case $bat_state in
  fully-charged)
    bat_time_until="Full"
    ;;
  charging) 
    bat_time_until="$bat_num%  - $bat_time until full"
    ;;
  discharging) 
    bat_time_until="$bat_num% - $bat_time left"
    ;;
esac

if (( $bat_num <= 20 )) && [[ $bat_state != "charging" ]];then
    lhs_arrow="^c"$aurora_1"^^c"$polar_1"^^b"$aurora_1"^"
  else
    lhs_arrow="^b"$polar_3"^^c"$snow_2"^"
fi
  
echo "$lhs_arrow $bat_sym $bat_time_until"
