#!/bin/sh

CONNECTED=$(bluetoothctl info | grep Alias | sed s/\ //g | sed 's/^[ \t]*//' | sed s/Alias://g)

echo  $CONNECTED
