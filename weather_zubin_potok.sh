#!/bin/bash
OUTPUT_FILE="/Users/draganavlaskovic/Desktop/coursera/weather_zubin_potok.csv"
TODAY=$(date +"%Y-%m-%d")
CURRENT_TEMP=$(curl -s wttr.in/ZubinPotok?format="%t" | tr -d '[:space:]')
FORECAST_TEMP=$(curl -s wttr.in/ZubinPotok?format="%f" | awk '{print $1}' | tr -d '[:space:]')
if [ ! -f $OUTPUT_FILE ]; then
    echo "date,current_temp,forecast_temp" > $OUTPUT_FILE
fi
echo "$TODAY,$CURRENT_TEMP,$FORECAST_TEMP" >> $OUTPUT_FILE
echo "==== Weather Data ===="
cat $OUTPUT_FILE
