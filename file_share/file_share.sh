# script creates a README.md and moves it to multiple projects.
# I usually work on multiple projects which always require a README.md of notes r.e. the project.
# However, you need to alter the content for the project you're working on.

#!/bin/bash

# create the file name and give it some content

FILE_NAME="README.md"
FILE_CONTENT="Welcome to the Project!"

# create file with above content

echo "$FILE_CONTENT" > "$FILE_NAME"

# Need paths to directories

# if you have 10 projects, you'll need 10 paths to these projects

PROJECT_PATHS=(


  "/path/to/your/project"
  "/path/to/your/project"
  "/path/to/your/project"
  "/path/to/your/project"
	

)

# move the README.md into project directories

for PROJECT_DIRECTORY in "${PROJECT_PATHS[@]}"; do

	# make sure the project directory exists

	if [ -d "PROJECT_DIRECTORY" ]; then

		mv "$FILE_NAME" "$PROJECT_DIRECTORY"

		echo "Moved $FILE_NAME to $PROJECT_DIRECTORY"

	else

		echo "Project Directory $PROJECT_DIRECTORY does not exist"

	fi 

	# create a new README.md for the next project directory

	echo "$FILE_CONTENT" > "$FILE_NAME"

done

# remove original README.md if it still exists

rm -f "$FILE_NAME"

