#!/bin/sh

# Script to output timetrace current project

current_project=$(timetrace status -o json | grep "project" | awk '{print $2}' | sed s/\"//g | sed s/,//g)

if [[ $current_project == "---" ]]; then
  echo "^c#bf616a^^c#2e3440^^b#bf616a^ "
elif [[ $current_project == "" ]]; then
  echo "^c#bf616a^^c#2e3440^^b#bf616a^ "
else
  echo "^c#bf616a^^c#2e3440^^b#bf616a^  $current_project"
fi
