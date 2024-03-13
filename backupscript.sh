#!/bin/bash

# Prompt user for input.
read -p "Enter files or directories to backup: " source_files
read -p "Enter destination directory for backups: " destination_dir

# Create backup directory if it does not exist.
mkdir -p "$destination_dir"

# Backup files/directories using tar.
tar -czvf "$destination_dir/backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz" $source_files

# Output prompt.
echo "Backup completed successfully!"
