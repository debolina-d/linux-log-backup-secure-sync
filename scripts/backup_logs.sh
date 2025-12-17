#!/bin/bash

SRC="/var/log"
DEST="$HOME/linux_project/log_backup"
LOGFILE="$HOME/linux_project/logs/cron.log"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

mkdir -p "$DEST"

echo "----------------------------------------" >> "$LOGFILE"
echo "Starting backup at $(date)" >> "$LOGFILE"

tar -czf "$DEST/logs_$TIMESTAMP.tar.gz" "$SRC" >> "$LOGFILE" 2>&1

echo "Backup completed at $(date)" >> "$LOGFILE"
