#!/bin/sh

#BAT_NUM=$(upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | sed 's/[^0-9]*//g')
BAT_NUM=$(upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | sed 's/[^0-9,.]*//g' | awk '{printf("%.0f\n", $1)}')

BAT_STATE=$(upower -i $(upower -e | grep 'BAT') | grep -E "state" | 
  sed 's/\ //g' | sed 's/state://g')
BAT_TIME=$(upower -i $(upower -e | grep 'BAT') | grep -E "time\ to" |
  sed 's/\ //g' | sed 's/timetoempty://g' | sed 's/timetofull://g' | sed 's/hours/ hrs/g' | sed 's/minutes/ mins/g' )

if (( $BAT_NUM <= 20 )); then
  BAT_SYM=""
  if (( $BAT_STATE != "charging" )); then
    notify-send "BATTERY LOW!"
  fi
elif (( $BAT_NUM <= 40 )); then
  BAT_SYM=""
elif (( $BAT_NUM <= 60 )); then
  BAT_SYM=""
elif (( $BAT_NUM <= 95 )); then
  BAT_SYM=" "
elif (( $BAT_NUM > 95 )); then
  BAT_SYM=""
else 
  BAT_NUM=""
fi

case $BAT_STATE in
  fully-charged)
    echo "$BAT_SYM Full"
    ;;
  charging) 
    echo "$BAT_SYM $BAT_NUM%  - $BAT_TIME until full"
    ;;
  discharging) 
    echo "$BAT_SYM $BAT_NUM% - $BAT_TIME left"
    ;;
esac


