#!/bin/sh

# Arrow is given in the timetrace one so it can change colour
LHS_ARROW="^b#4c566a^^c#d8dee9^"

TIME_SPENT=$(timetrace status -o json | grep "trackedTimeToday" | awk '{print $2 $3}' | sed s/\"//g | sed s/,//g)

# Script to output timetrace current project
#if [[ $(timetrace status) = "💡 You haven't started tracking time today" ]]; then
if [[ $TIME_SPENT = "" ]]; then
  TIME_SPENT="0h0m"
fi

OUTPUT="$LHS_ARROW $TIME_SPENT"
echo $OUTPUT
