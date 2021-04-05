#!/bin/sh

# Show syncing time
last_checked=$(cat ~/dotfiles/status_scripts/email_last_synced.txt)
last_checked_seconds=$(($(date +%s) - $last_checked))
last_checked_ago=$(($(($(date +%s) - $last_checked))/60))

email_numbers=$(cat ~/dotfiles/status_scripts/email_number.txt)
email_sync=$(cat ~/dotfiles/status_scripts/email_syncing.txt)

if (( last_checked_seconds <= 10 )); then
echo " $email_numbers  synced just now $email_sync"
elif (( last_checked_seconds <= 60 )); then
echo " $email_numbers  synced 1 min ago $email_sync"
else
echo " $email_numbers  synced $last_checked_ago mins ago $email_sync"
fi

