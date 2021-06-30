date_formatted=$(date "+%Y-%m-%d %R")

battery_info=$(upower --show-info $(upower --enumerate |\
    grep 'BAT') |\
egrep "percentage" |\
awk '{print $2}')

echo "[${date_formatted}] [${battery_info}]"
