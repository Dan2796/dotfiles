#!/bin/sh

WIFI="^c#88c0d0^^c#2e3440^^b#88c0d0^ $(nmcli | grep -o 'connected to .\+' | sed 's/connected to / /g')"

echo "$WIFI"
