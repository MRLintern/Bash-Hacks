
# bash script compiles some C++ files into an executable and places executable into own directory, bin

#!/bin/bash

# define source file, header file, executable name and the directory to store the executable

SOURCE="main.cpp"
HEADER="add.h"
OUTPUT="main"
OUTPUT_DIR="bin"

# create directory for executable

if [ ! -d "$OUTPUT_DIR" ]; then

	mkdir -p "$OUTPUT_DIR"

fi

# check if source file exists

if [ ! -f "$SOURCE" ]; then

	echo "Error: Source file not found!"
	exit 1

fi

# check if the header file exists

if [ ! -f "$HEADER" ]; then

	echo "Error: Header file not found!"
	exit 1

fi

# compile the source file into an executable; add in debugging flags and C++ ISO standard

g++ -o "$OUTPUT_DIR/$OUTPUT" $SOURCE

# check that compilation was successful

if [ $? -eq 0 ]; then

	echo "Compilation successful. Executable created: $OUTPUT_DIR/$OUTPUT"

else

	echo "Compilation failed!"
	exit 1

fi
