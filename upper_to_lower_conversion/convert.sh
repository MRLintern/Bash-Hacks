# converts a text file with upper case words into one that contains only lower case words

#!/bin/bash

# check file name is an argument

if [ "$#" -ne 1 ]; then

	echo "Usage: $0 <filename>"
	exit 1

fi

# does the file exist?

if [ ! -f "$1" ]; then

	echo "Error: File '$1' not found."
	exit 1

fi

# start conversion...

tr '[:upper:]' '[:lower:]' < "$1" > "${1%.txt}_lowercase.txt"

# successful conversion

echo "Converted file saved as '${1%.txt}_lowercase.txt'"
