echo "Enter the time followed by m for minutes and s for seconds. ex) Enter 10m for 10 minutes"
read -p "Time to disable (0 is indefinite): " t
read -p "Reason for disable: " reason

printf "{'disabled': 'true', 'reason': '$reason', 'time': '$t'}" > ~/admin-tools/disabled
notify-send "Slot Machine" "Your game has been disabled by the administrators for $reason."

if [ $t != 0 ]
then
    sh -c "sleep $t; echo '{\"disabled\": \"false\"}' > ~/admin-tools/disabled; notify-send -u 'critical' 'Slot Machine' 'Your game has been reenabled.'" &
    echo "Disabled for $t minutes."
else
    echo "Disabled. To reenable, run enable_game.sh."
fi