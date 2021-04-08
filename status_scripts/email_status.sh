#!/bin/sh

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
echo "$email_sync$email_numbers  just now"
elif (( last_checked_seconds <= 120 )); then
echo "$email_sync$email_numbers  1 min"
else
echo "$email_sync$email_numbers  $last_checked_ago mins"
fi
