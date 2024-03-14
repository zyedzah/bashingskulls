#!/bin/bash

# Create directories
mkdir -p Documents Images Music Videos Others

# Move files
for file in *; do
    if [ -f "$file" ]; then
        # Extract extension
        extension="${file##*.}"
        case "$extension" in
            txt|pdf|doc|docx|odt) mv "$file" Documents/ ;;
            jpg|jpeg|png|gif|bmp) mv "$file" Images/ ;;
            mp3|wav|flac|aac) mv "$file" Music/ ;;
            mp4|mkv|avi|mov|wmv) mv "$file" Videos/ ;;
            *) mv "$file" Others/ ;;
        esac
    fi
done

# Display success message
echo "Files organized successfully!"
