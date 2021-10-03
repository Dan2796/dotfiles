#!/bin/sh

LHS_ARROW="^c#2e3440^^c#d8dee9^^b#2e3440^"

WEEK=$(khal list now -df 'SKIPME' | grep -v SKIPME | grep -v '^ ' | head -n 1 | sed -r 's/^.{2}//')

echo "$LHS_ARROW $WEEK"
