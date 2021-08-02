#!/bin/sh
LHS_ARROW_BASIC="^c#4c566a^^c#d8dee9^^b#4c566a^"
# LHS defined below according to whether project is started

# Script to output timetrace current project

current_project=$(timetrace status -o json | grep "project" | awk '{print $2}' | sed s/\"//g | sed s/,//g)

if [[ $current_project == "---" ]]; then
  time_symbol=""
  LHS_ARROW=$LHS_ARROW_BASIC
  RHS_ARROW=""
elif [[ $current_project == "" ]]; then
  time_symbol=""
  LHS_ARROW=$LHS_ARROW_BASIC
  RHS_ARROW=""
else
  time_symbol=" $current_project"
  LHS_ARROW="^c#bf616a^^c#d8dee9^^b#bf616a^"
  RHS_ARROW="^c#4c566a^^b#4c566a^"
fi

echo "$LHS_ARROW $time_symbol $RHS_ARROW"
