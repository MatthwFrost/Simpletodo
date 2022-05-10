# Simple todo command

This command allows you to input tasks into a file by one command, **todo**

    > todo "This is a command"

# Install

*Only works on macOS/Linux at the moment*

```
    cd ~
    git clone https://github.com/MatthwFrost/Simpletodo.git
    nano .bashrc
    source ~/simpletodo/.todo.sh
```

# How to use

- Type a the command **todo** followed by a task, for exmaple:

    ```
    todo "Remember to add this" 
    ```

- todo will create a 'todo.md' file, if one doesn't exist.
- You can create the 'todo.md' file without any text, by typing todo,
  (see how to change the name #how-to-use)
    ```todo```

## Changing names

#### File name
- If you want to chagne the names of the 'todo.md' files:
```
    > cd ~/Simpletodo
    > nano .todo.sh
    - At the top of the file you will see, 'NAME'.
    > NAME="todo.sh"
    - Input the name you wish to name your todo files.

```

#### Todo title

- The process is the same, however, chaning the 'TITLE' variable

```
    TITLE="your_title_name"
```
