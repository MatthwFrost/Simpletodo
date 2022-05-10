# Simple todo command

This command allows you to input tasks into a file by one command, **todo**.

```
    todo "This is a command"
```

# Install

*Only works on macOS/Linux at the moment*

```
    cd ~
    git clone https://github.com/MatthwFrost/Simpletodo.git
    nano .bashrc
    source ~/simpletodo/.todo.sh (paste this command into .bashrc)
```

## Possible problems

When I first built this script, it didn't source correctly.
```
todo: command not found
```

I found a fix, by adding this line of code into my .bash_profile

```bash
[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
```

# How to use

- Type a the command **todo** followed by a task, for exmaple:

    ```
    todo "Remember to add this" 
    ```

- todo will create a 'todo.md' file, if one doesn't exist.
- You can create the 'todo.md' file without any text, by typing todo,
  (see how to change the name, [Changing names](#changing-names))
    ```
    todo
    ```
(This will create the todo file in your current directory)

## Changing names

#### File name
- If you want to change the names of the 'todo.md' files:

```
    cd ~/Simpletodo
    nano .todo.sh
```
Input the name you wish (Avoid spaces)

```bash
    NAME="todo.sh"
```

- Replace "todo.sh" with the name you want

#### Todo title

- The process is the same, however, chaning the 'TITLE' variable

```bash
    TITLE="your_title_name"
```

## Contact

Please feel free to create an 'issue' if you have any ideas or problems with
the script


