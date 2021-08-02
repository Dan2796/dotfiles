#!/bin/sh

LHS_ARROW="^c#434c5e^^c#d8dee9^^b#434c5e^"
LHS_ARROW="^b#434c5e^^c#d8dee9^"

WIFI="$(nmcli | grep -o 'connected to .\+' | sed 's/connected to / /g')"

echo "$LHS_ARROW $WIFI"
