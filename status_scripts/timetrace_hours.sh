#!/bin/sh
LHS_ARROW_BASIC="^c#4c566a^^c#d8dee9^^b#4c566a^"
RED_LHS_ARROW_BASIC="^c#bf616a^^c#d8dee9^^b#bf616a^" # for red arrow
ORANGE_LHS_ARROW_BASIC="^c#d08770^^c#d8dee9^^b#d08770^" # for orange arrow

# Arrow is given in the timetrace one so it can change colour
LHS_ARROW="^b#4c566a^^c#d8dee9^"

TIME_SPENT=$(timetrace status -o json | grep "trackedTimeToday" | awk '{print $2 $3}' | sed s/\"//g | sed s/,//g)

if [[ -f "/home/dan/dotfiles/status_scripts/hide_email.txt" ]]; then
    #LHS_ARROW=$RED_LHS_ARROW_BASIC
    LHS_ARROW=""
    #RHS_ARROW="^c#4c566a^^b#4c566a^"
    TIME_SPENT=""
elif [[ $TIME_SPENT = "" ]]; then
  TIME_SPENT="0h0m"
fi

OUTPUT="$LHS_ARROW $TIME_SPENT"
echo $OUTPUT
