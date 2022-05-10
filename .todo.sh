#!/usr/bin/env bash

# Add support to input text into different files *


# Name your todo files, Please avoid spaces
NAME="todo.md"


# The text you see at the top of your todo file.
TITLE="New Todo List"


# Checks if bash is being used
if [ -z "${BASH_VERSION:-}" ]
then
    abort "Bssh is needed for this script"
fi


function todo(){
    MESSAGE=$1
    TODONAME="/$NAME.md"
    FILENAME="${PWD}/$TODONAME"

    if [ -f "todo.md" ]; then
        echo "  - $MESSAGE" >> $FILENAME

    else
        touch "$FILENAME"
        echo "# $TITLE" >> $FILENAME
        echo "" >> $FILENAME
        echo "  - $MESSAGE" >> $FILENAME
    fi
}
