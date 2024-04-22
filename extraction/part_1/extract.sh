
# performs extraction of .zip files

#!/bin/bash

# Check for required command

if ! command -v unzip &> /dev/null; then

    echo "unzip command could not be found. Please install unzip."
    exit 1
fi

# Prompt user for the directory containing ZIP files

read -p "Enter the directory containing ZIP files: " directory

# Check if the directory exists

if [ ! -d "$directory" ]; then

    echo "Error: Directory does not exist."
    exit 1
fi

# Navigate to the directory

cd "$directory"

# Find all ZIP files and extract them

for zipfile in *.zip; do
    if [ -f "$zipfile" ]; then
    
        # Create a directory named after the ZIP file (without the .zip extension)
        
        extract_dir="${zipfile%.zip}"
        mkdir -p "$extract_dir"

        # Extract the ZIP file into the newly created directory
        
        unzip -o "$zipfile" -d "$extract_dir"
        echo "Extracted $zipfile to $extract_dir/"
        
    else
    
        echo "No ZIP files found in the directory."
        break
    fi
done
