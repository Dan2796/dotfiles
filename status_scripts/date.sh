#!/bin/sh
LHS_ARROW="^b#2e3440^^c#e5e9f0^"

# europe time. manual adjust because it's easier
#DATE=$(date -d "+ 1 hour" +"%a, %d %b, %H:%M")
DATE=$(date +"%a, %d %b, %H:%M")

echo "$LHS_ARROW   $DATE "
