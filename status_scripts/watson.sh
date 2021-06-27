#!/bin/sh

# Script to output watson current project
current_project=$(timetrace status -o json | grep "project" | awk '{print $2}' | sed s/\"//g | sed s/,//g)

if [[ $current_project == "---" ]]; then
  echo " "
else
  echo "  $current_project"
fi

