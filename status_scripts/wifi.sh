#!/bin/sh

WIFI=$(nmcli | grep -o 'connected to .\+' |
  sed 's/connected to / /g'
)

echo "$WIFI"
