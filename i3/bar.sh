date_formatted=$(date "+%Y-%m-%d %R")

battery_info=$(upower --show-info $(upower --enumerate |\
    grep 'BAT') |\
egrep "state|percentage" |\
awk '{print $2}')

echo $battery_info 🔋 $date_formatted
