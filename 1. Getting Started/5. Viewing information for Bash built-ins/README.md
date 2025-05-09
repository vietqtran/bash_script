help <command>
This will display the Bash help (manual) page for the specified built-in.
For example, help unset will show:

    unset: unset [-f] [-v] [-n] [name ...]
    Unset values and attributes of shell variables and functions.
    For each NAME, remove the corresponding variable or function.
    Options:
    -f treat each NAME as a shell function
    -v treat each NAME as a shell variable
    -n treat each NAME as a name reference and unset the variable itself
    rather than the variable it references
    Without options, unset first tries to unset a variable, and if that fails,
    tries to unset a function.
    Some variables cannot be unset; also see `readonly'.
    Exit Status:
    Returns success unless an invalid option is given or a NAME is read-only.

To see a list of all built-ins with a short description, use
help -d