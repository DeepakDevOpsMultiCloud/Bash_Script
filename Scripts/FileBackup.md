## File Backup Script

🔹 **Purpose**: Creates a backup of a specified directory and stores it with a timestamp.

```bash
#!/bin/bash

BACKUP_SRC="/var/www/html" # Directory to backup
BACKUP_DEST="/backup" # Backup storage location
TIMESTAMP=$(date +"%Y%m%d_%H%M%S") 
BACKUP_FILE="$BACKUP_DEST/backup_$TIMESTAMP.tar.gz"

mkdir -p $BACKUP_DEST
tar -czvf $BACKUP_FILE $BACKUP_SRC

echo "Backup completed: $BACKUP_FILE"
```

📌 **Usage**: Automate this with a cron job to run daily.

