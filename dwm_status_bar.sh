#!/bin/sh

#pkill dwm_status_bar

while true; do 
    
    last_checked=$(cat ~/dotfiles/email_last_synced.txt)

    last_checked_ago=$(($(($(date +%s) - $last_checked))/60))
    
    WIFI=$(nmcli | grep -o 'connected to.\+' |
      sed 's/connected to/WIFI:/g'
    )

    # Sound
    SOUND=$(pactl list sinks | grep 'Volume: f' | grep -o '[0-9]\+%' | head -1)
   
    if pactl list sinks | grep 'Mute' | grep 'no'; then
      MUTE='ON'
    fi
    
    if pactl list sinks | grep 'Mute' | grep 'yes'; then
      MUTE='MUTED'
    fi

    BATPERC=$(upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | xargs echo)

    BATSTATE=$(upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full" | xargs echo)

    DATE=$(date +"%a, %d %b, %H:%M")

    xsetroot -name " Email last updated: $last_checked_ago minutes ago. | $WIFI | Sound: ($MUTE) $SOUND | $BATPERC $BATSTATE | $DATE"
    
    sleep 1m

done
