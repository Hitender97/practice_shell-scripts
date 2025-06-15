#!/bin/bash

# Set variables
SRC_USER="user1"
SRC_HOST="src-server.example.com"
SRC_DIR="/path/to/source/"
DEST_DIR="/path/to/destination/"
LOG_FILE="/var/log/rsync_sync.log"

# Run rsync with archive, verbose, compression, and SSH
echo "[$(date)] Starting rsync..." >> "$LOG_FILE"

rsync -avz --update --delete -e ssh ${SRC_USER}@${SRC_HOST}:${SRC_DIR} ${DEST_DIR} >> "$LOG_FILE" 2>&1

if [ $? -eq 0 ]; then
    echo "[$(date)] Rsync completed successfully." >> "$LOG_FILE"
else
    echo "[$(date)] Rsync failed!" >> "$LOG_FILE"
fi