#!/bin/sh

source /home/dan/dotfiles/status_scripts/nord_colour_scheme.sh

# Arrow is given in the timetrace one so it can change colour
#lhs_white_arrow="^b"$polar_4"^^c"$snow_1"^"
lhs_arrow="^c"$polar_3"^^c"$snow_1"^^b"$polar_3"^"

# Show syncing time
last_checked=$(cat ~/dotfiles/status_scripts/status_files/email_last_synced.txt)
last_checked_seconds=$(($(date +%s) - $last_checked))
last_checked_ago=$(($(($(date +%s) - $last_checked))/60))

email_numbers=$(cat ~/dotfiles/status_scripts/status_files/email_number.txt)
if [[ -f "/home/dan/dotfiles/status_scripts/status_files/email_syncing.txt" ]]; then
  email_sync="syncing "
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

if [[ -f "/home/dan/dotfiles/status_scripts/status_files/timetrace_status.txt" ]]; then
  #output="$lhs_white_arrow"
  output=""
elif [[ -f "/home/dan/dotfiles/status_scripts/status_files/workin.txt" ]]; then
  output=""
elif [[ -f "/home/dan/dotfiles/status_scripts/status_files/chillin.txt" ]]; then
  output=""
else 
  output="$lhs_arrow $email_sync$email_numbers   $long_ago_message"
fi

echo $output

