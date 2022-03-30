#!/bin/sh

LHS_ARROW="^b#434c5e^^c#d8dee9^"

WIFI="$(nmcli | grep -o 'connected to .\+' | sed 's/connected to / /g')"

echo "$LHS_ARROW $WIFI"
