#!/bin/bash

# Directory where the log folders are located
LOG_DIR="/dacx/var/addde/dacxdt/application/logs"

# Check if the directory exists
if [ -d "$LOG_DIR" ]; then
  echo "Deleting directories older than 7 days in $LOG_DIR"
  
  # Find and delete directories older than 7 days
  find "$LOG_DIR" -type d -mtime +7 -exec rm -rf {} \;
  
  echo "Old directories deleted successfully."
else
  echo "Log directory $LOG_DIR does not exist."
  exit 1
fi