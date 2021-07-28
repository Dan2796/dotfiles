#!/bin/sh

WIFI="^c#b48ead^^c#2e3440^^b#b48ead^ $(nmcli | grep -o 'connected to .\+' | sed 's/connected to / /g')"

echo "$WIFI"
