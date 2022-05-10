#!/usr/bin/env bash

function todo(){
    message=$1
    FILENAME=$(PWD)
    FILENAME+="/todo.md"

    if [ -f "todo.md" ]; then
        echo "  - $message" >> $FILENAME

    else
        touch "todo.md"
        echo "# New todo list." >> $FILENAME
        echo "" >> $FILENAME
        echo "  - $message" >> $FILENAME
    fi
}
