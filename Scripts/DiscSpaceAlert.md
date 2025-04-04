## Disk Space Alert Script

🔹 Purpose: Sends an alert if disk usage exceeds 90%.

#!/bin/bash

DISK_THRESHOLD=90
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$DISK_USAGE" -ge "$DISK_THRESHOLD" ]; then
 echo "⚠️ ALERT: Disk usage is high ($DISK_USAGE%)"
fi

📌 Use Case: Prevents system failures due to low disk space.