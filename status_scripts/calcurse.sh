#!/bin/sh

LHS_ARROW="^c#2e3440^^c#d8dee9^^b#2e3440^"

# Pull and echo next appointment

NEXT_APT=$(calcurse -n | sed -n 2p | sed s/\ //g | sed "s/\[//g" | sed "s/]/ until /g")

if [[ $NEXT_APT == "" ]]; then
  NEXT_APT_MESSAGE="24 hrs off"
else
  NEXT_APT_MESSAGE=$NEXT_APT
fi
  
echo "$LHS_ARROW $NEXT_APT_MESSAGE"
