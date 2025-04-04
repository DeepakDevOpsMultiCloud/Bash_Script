## User Account Management Script

🔹 **Purpose**: Creates a new user, sets a password, and adds them to the sudo group.

```bash
#!/bin/bash

NEW_USER="devops"
PASSWORD="DevOps@123"

useradd -m -s /bin/bash $NEW_USER
echo "$NEW_USER:$PASSWORD" | chpasswd
usermod -aG sudo $NEW_USER

echo "✅ User $NEW_USER created with sudo privileges."
```

📌 **Use Case**: Helps automate user creation for team members.

