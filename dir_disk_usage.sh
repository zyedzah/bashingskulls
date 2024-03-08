#!/bin/bash

# Variables
separator="---------------------"

# User Input
echo "Enter directories to analyze (space-separated):"
read -r directories

# Verify Directories
for dir in $directories; do
    if [ ! -d "$dir" ]; then
        echo "Error: '$dir' is not a valid directory."
        exit 1
    fi
done

# Disk Usage Report
echo -e "\nDisk Usage Report\n$separator"
du -h --max-depth=1 $directories | sort -hr
