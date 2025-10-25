#!/bin/bash


#Setting variables
SOURCE_DIR="/root/Automated_Backup"       # Directory to backup
BACKUP_NAME="backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"
REMOTE_USER="ubuntu"
REMOTE_HOST="192.168.1.50"
REMOTE_DIR="/home/ubuntu/backups"

echo "=== Backup Started: $(date) ==="

#Create backup archive
tar -czf "$BACKUP_NAME" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"
if [ $? -eq 0 ]; then
    echo "Backup created: $BACKUP_NAME"
else
    echo "Backup creation failed!"
    exit 1
fi

#Copy backup to remote server
scp "$BACKUP_NAME" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"
if [ $? -eq 0 ]; then
    echo "Backup transferred successfully to $REMOTE_HOST:$REMOTE_DIR"
else
    echo "Backup transfer failed!"
    exit 1
fi

echo "=== Backup Completed: $(date) ==="
