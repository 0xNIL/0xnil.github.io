#!/bin/bash

# Script to copy website dist files to docs folder
# This copies the built website from ../website/dist to ./docs

SOURCE_DIR="../website/dist"
DEST_DIR="./docs"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory $SOURCE_DIR does not exist"
    exit 1
fi

# Create docs directory if it doesn't exist
mkdir -p "$DEST_DIR"
rm -rf "$DEST_DIR/*"

# Copy files from source to destination
echo "Copying files from $SOURCE_DIR to $DEST_DIR..."
cp -r "$SOURCE_DIR/"* "$DEST_DIR/"

echo "Copy complete!"

