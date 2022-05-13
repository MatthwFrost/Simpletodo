#!/usr/bin/env bash

# Add support to input text into different files
# Make the path the name of the todo file


# Name your todo files, Please avoid spaces
NAME="todo"


# The text you see at the top of your todo file.
TITLE="Todo List"


# Checks if bash is being used
if [ -z "${BASH_VERSION:-}" ]
then
    abort "Bash is needed for this script"
fi


function todo(){
    MESSAGE="\t- $1"
    TODONAME="/$NAME.md"
    FILENAME="${PWD}/$TODONAME"

    if [ -f "todo.md" ]; then
        echo -e "$MESSAGE" >> $FILENAME

    else
        touch "$FILENAME"
        echo "# $TITLE" >> $FILENAME
        echo "" >> $FILENAME
        echo -e "$MESSAGE" >> $FILENAME
    fi
}
