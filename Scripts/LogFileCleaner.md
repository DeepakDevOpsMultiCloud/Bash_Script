## Log File Cleaner Script

🔹 Purpose: Deletes old log files to free up disk space.

#!/bin/bash

LOG_DIR="/var/log"
DAYS=30

find $LOG_DIR -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;

echo "Old log files deleted from $LOG_DIR"

📌 Usage: Prevents log files from consuming too much disk space.