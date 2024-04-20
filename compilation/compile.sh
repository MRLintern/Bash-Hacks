
# bash script compiles some C++ files into an executable and places executable into own directory, bin.
# The source files are then placed into their own directory, src.

#!/bin/bash

# define all files and directories

SOURCE="main.cpp"
HEADER="add.h"
OUTPUT="main"
OUTPUT_DIR="bin"
SOURCE_DIR="src"


# are src & bin directories present? If not, create them

# bin directory #

if [ ! -d "OUTPUT_DIR" ]; then

	mkdir -p "$OUTPUT_DIR"
	
fi

# src directory #

if [ ! -d "$SOURCE_DIR" ]; then

	mkdir -p "$SOURCE_DIR"
	
fi

# check if source file exists

if [ ! -f "$SOURCE" ]; then

	echo "Error: Source file not found!"
	exit 1
	
fi

# check header file exists

if [ ! -f "$HEADER" ]; then

	echo "Error: Header file not found!"
	exit 1
	
fi

# compile source file into executable; add debugging flags and C++ ISO standard

g++ -o "$OUTPUT_DIR/$OUTPUT" $SOURCE -Wall -Wextra -std=c++17

# for moving source files into src directory

mv *.cpp "$SOURCE_DIR/"
mv *.h "$SOURCE_DIR/"

# check compilation successful

if [ $? -eq 0 ]; then

	echo "Compilation successful. Executable created: $OUTPUT_DIR/$OUTPUT"
	echo "Source files can be found in: $SOURCE_DIR"
	
else

	echo "Compilation failed!"
	exit 1
	
fi
