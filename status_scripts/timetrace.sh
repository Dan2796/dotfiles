#!/bin/sh
LHS_ARROW_BASIC="^c#4c566a^^c#d8dee9^^b#4c566a^"
RED_LHS_ARROW_BASIC="^c#bf616a^^c#d8dee9^^b#bf616a^" # for red arrow

# LHS defined below according to whether project is started

# Script to output timetrace current project

current_project=$(timetrace status -o json | grep "project" | awk '{print $2}' | sed s/\"//g | sed s/,//g)

if [[ $current_project == "---" ]]; then
  # if paused red arrow 
  if [[ -f "/home/dan/dotfiles/status_scripts/timetrace_status.txt" ]]; then
    time_symbol=" Paused"
    LHS_ARROW=$RED_LHS_ARROW_BASIC
    RHS_ARROW="^c#4c566a^^b#4c566a^"
  else
    time_symbol=""
    LHS_ARROW=$LHS_ARROW_BASIC
    RHS_ARROW=""
  fi
elif [[ $current_project == "" ]]; then
  time_symbol=""
  LHS_ARROW=$LHS_ARROW_BASIC
  RHS_ARROW=""
else
  time_symbol=" $current_project"
  LHS_ARROW="^c#88c0d0^^c#2e3440^^b#88c0d0^" # for nord blue arrow
  RHS_ARROW="^c#4c566a^^b#4c566a^"
fi

echo "$LHS_ARROW $time_symbol $RHS_ARROW"
