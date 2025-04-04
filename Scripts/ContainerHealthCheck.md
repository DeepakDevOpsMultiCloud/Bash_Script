## Docker Container Health Check Script

🔹 **Purpose**: Checks if a Docker container is running and restarts it if needed.

```bash
#!/bin/bash

CONTAINER_NAME="my_app"

if [ "$(docker inspect -f '{{.State.Running}}' $CONTAINER_NAME)" == "false" ]; then
 echo "⚠️ $CONTAINER_NAME is not running! Restarting..."
 docker start $CONTAINER_NAME
else
 echo "✅ $CONTAINER_NAME is running fine."
fi
```

📌 **Use Case**: Ensures Docker containers stay up and running.

