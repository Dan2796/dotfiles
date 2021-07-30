#!/bin/sh

# Pull and echo next appointment

NEXT_APT=$(calcurse -n | sed -n 2p | sed s/\ //g | sed "s/\[//g" | sed "s/]/ until /g")

if [[ $NEXT_APT == "" ]]; then
  echo "^c#a3be8c^^b#a3be8c^^c#2e3440^ 24 hrs off"
else
  echo "^c#a3be8c^^b#a3be8c^^c#2e3440^ $NEXT_APT"
fi
