#!/bin/sh

# Script to output timetrace current project

current_project=$(timetrace status -o json | grep "project" | awk '{print $2}' | sed s/\"//g | sed s/,//g)

if [[ $current_project == "---" ]]; then
  echo "^c#b48ead^^c#2e3440^^b#b48ead^ "
elif [[ $current_project == "" ]]; then
  echo "^c#b48ead^^c#2e3440^^b#b48ead^ "
else
  echo "^c#b48ead^^c#2e3440^^b#b48ead^  $current_project"
fi
