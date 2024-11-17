#!/bin/bash

# Set the source and destination folders
SRC_DIR="../material-design-icons/src" # Relative path to the 'src' folder
DEST_DIR="./output" # Output folder inside 'renamed'

# Create the output folder if it doesn't exist
mkdir -p "$DEST_DIR"

# Iterate through all SVG files in the source folder
find "$SRC_DIR" -type f -name "*.svg" | while read -r file; do
    # Extract details from the file path
    size=$(basename "$file" .svg) # Get size (filename without .svg)
    style=$(basename "$(dirname "$file")") # Get style
    icon_name=$(basename "$(dirname "$(dirname "$file")")") # Get name_of_icon
    category=$(basename "$(dirname "$(dirname "$(dirname "$file")")")") # Get category

    # Create the new filename
    new_name="${size}@${style}@${category}@${icon_name}.svg"

    # Move and rename the file
    cp "$file" "$DEST_DIR/$new_name"
done

echo "All files renamed and moved to $DEST_DIR"