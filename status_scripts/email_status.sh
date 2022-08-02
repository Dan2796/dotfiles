#!/bin/sh

# Arrow is given in the timetrace one so it can change colour
WHITE_LHS_ARROW="^b#4c566a^^c#d8dee9^"
LHS_ARROW="^c#434c5e^^c#d8dee9^^b#434c5e^"
#LHS_ARROW="^b#5e81ac^^c#2e3440^"

# Show syncing time
last_checked=$(cat ~/dotfiles/status_scripts/email_last_synced.txt)
last_checked_seconds=$(($(date +%s) - $last_checked))
last_checked_ago=$(($(($(date +%s) - $last_checked))/60))

email_numbers=$(cat ~/dotfiles/status_scripts/email_number.txt)
if [[ -f "/home/dan/dotfiles/status_scripts/email_syncing.txt" ]]; then
  email_sync=$(cat ~/dotfiles/status_scripts/email_syncing.txt)
else
  email_sync=""
fi

if (( last_checked_seconds <= 10 )); then
  long_ago_message="just now"
elif (( last_checked_seconds <= 120 )); then
  long_ago_message="1 min"
else
  long_ago_message="$last_checked_ago mins"
fi

if [[ -f "/home/dan/dotfiles/status_scripts/timetrace_status.txt" ]]; then
  OUTPUT="$WHITE_LHS_ARROW"
elif [[ -f "/home/dan/dotfiles/status_scripts/hide_email.txt" ]]; then
  OUTPUT=""
else 
  OUTPUT="$LHS_ARROW $email_sync$email_numbers   $long_ago_message"
fi

echo $OUTPUT

