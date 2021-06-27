#!/bin/sh

# Script to output watson current project
current_project=$(watson status | awk '{print $2}' )

if [[ $current_project == "project" ]]; then
  echo " "
else
  echo "  $current_project"
fi

