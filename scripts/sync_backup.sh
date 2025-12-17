
#!/bin/bash

# Source and destination directories
LOCAL_DIR="$HOME/linux_project/log_backup/"
REMOTE_DIR="$HOME/linux_project/remote_backups/"

# Log file
LOGFILE="$HOME/linux_project/logs/cron.log"

echo "----------------------------------------" >> "$LOGFILE"
echo "Starting secure sync at $(date)" >> "$LOGFILE"

# Rsync over SSH to localhost
rsync -av "$LOCAL_DIR" "localhost:$REMOTE_DIR" >> "$LOGFILE" 2>&1

echo "Secure sync completed at $(date)" >> "$LOGFILE"


