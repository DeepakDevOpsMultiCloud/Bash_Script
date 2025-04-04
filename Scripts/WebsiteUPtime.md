## Website Uptime Checker Script

🔹 Purpose: Checks if a website is up or down and alerts if it is unreachable.

#!/bin/bash

URL="https://example.com"
STATUS=$(curl -o /dev/null -s -w "%{http_code}" $URL)

if [ "$STATUS" -ne 200 ]; then
 echo "ALERT: $URL is DOWN (HTTP Status: $STATUS)"
else
 echo "$URL is UP (HTTP Status: $STATUS)"
fi

📌 Usage: Set this script to run every 5 minutes using cron.