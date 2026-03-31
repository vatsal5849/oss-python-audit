#!/bin/bash
# Script 4: Log File Analyzer
# Author: Vatsal Shrivastava

echo "Log File Analyzer"
echo "Student: Vatsal Shrivastava"
echo "--------------------------------"

logfile=$1
keyword=${2:-error}

if [ ! -f "$logfile" ]
then
    echo "The specified log file does not exist."
    exit 1
fi

count=0

while read line
do
    echo "$line" | grep -iq "$keyword"
    if [ $? -eq 0 ]
    then
        count=$((count + 1))
    fi
done < "$logfile"

echo ""
echo "Keyword '$keyword' appeared $count times in $logfile."

echo ""
echo "Recent matching entries:"
grep -i "$keyword" "$logfile" | tail -5