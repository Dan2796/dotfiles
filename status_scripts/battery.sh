#!/bin/sh

# LHS defined at bottom 

#BAT_NUM=$(upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | sed 's/[^0-9]*//g')
BAT_NUM=$(upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | sed 's/[^0-9,.]*//g' | awk '{printf("%.0f\n", $1)}')

BAT_STATE=$(upower -i $(upower -e | grep 'BAT') | grep -E "state" | 
  sed 's/\ //g' | sed 's/state://g')
BAT_TIME=$(upower -i $(upower -e | grep 'BAT') | grep -E "time\ to" |
  sed 's/\ //g' | sed 's/timetoempty://g' | sed 's/timetofull://g' | sed 's/hours/ hrs/g' | sed 's/minutes/ mins/g' )

if (( $BAT_NUM <= 20 )); then
  BAT_SYM=""
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
    BAT_TIME_UNTIL="Full"
    ;;
  charging) 
    BAT_TIME_UNTIL="$BAT_NUM%  - $BAT_TIME until full"
    ;;
  discharging) 
    BAT_TIME_UNTIL="$BAT_NUM% - $BAT_TIME left"
    ;;
esac

# note that the lhs arrow is overwritten if battery is low
#if [ $BAT_NUM <= 20 ] && [ $BAT_STATE != "charging" ]; then
    #LHS_ARROW="^c#bf616a^^c#2e3440^^b#bf616a^"
  #else
    #LHS_ARROW="^c#5e81ac^^c#2e3440^^b#5e81ac^"
#fi

if (( $BAT_NUM <= 20 )) && [[ $BAT_STATE != "charging" ]];then
    LHS_ARROW="^c#bf616a^^c#2e3440^^b#bf616a^"
  else
    LHS_ARROW="^b#434c5e^^c#e5e9f0^"
fi
  
echo "$LHS_ARROW $BAT_SYM $BAT_TIME_UNTIL"
