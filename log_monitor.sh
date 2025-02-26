#!/bin/bash

# Log Monitoring Script
LOG_FILE="/home/badiyari/bash_automation"
KEYWORDS=("ERROR" "CRITICAL" "FAILED")

echo "Monitoring logs in $LOG_FILE for keywords: ${KEYWORDS[*]}"

# Monitor the log file in real-time
tail -f "$LOG_FILE" | while read line; do
    for keyword in "${KEYWORDS[@]}"; do
        if echo "$line" | grep -q "$keyword"; then
            echo "ALERT: Found '$keyword' in log: $line"
        fi
    done
done

