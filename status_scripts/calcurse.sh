#!/bin/sh

# Pull and echo next appointment

NEXT_APT=$(calcurse -n | sed -n 2p | sed s/\ //g | sed "s/\[//g" | sed "s/]/ until /g")

if [[ $NEXT_APT == "" ]]; then
  echo "^c#434c5e^^b#434c5e^^c#d8dee9^ 24 hrs off"
else
  echo "^c#434c5e^^b#434c5e^^c#d8dee9^ $NEXT_APT"
fi
