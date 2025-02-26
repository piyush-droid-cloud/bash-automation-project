#!/bin/bash

# File Backup Script
SOURCE_DIR="/home/badiyari/bash_project1"
BACKUP_DIR="/home/badiyari/bash_project2"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

# Create backup directory if not exists
mkdir -p "$BACKUP_DIR"

# Backup files
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" -C "$SOURCE_DIR" .

echo "Backup completed: $BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

