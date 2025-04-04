## Git Auto-Push Script

🔹 **Purpose**: Automatically adds, commits, and pushes changes to a Git repository.

```bash
#!/bin/bash

REPO_DIR="/home/devops/project"
cd $REPO_DIR

git add .
git commit -m "Auto commit on $(date)"
git push origin main

echo "✅ Code pushed to Git repository."
```

📌 **Use Case**: Automates the process of committing and pushing changes, reducing manual effort.

