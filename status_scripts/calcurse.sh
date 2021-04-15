#!/bin/sh

# Pull and echo next appointment

calcurse -n | sed -n 2p | sed s/\ //g | sed "s/\[//g" | sed "s/]/ until /g"
