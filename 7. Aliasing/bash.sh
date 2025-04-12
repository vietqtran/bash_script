#!/usr/bin/env bash

alias ls='ls --color=auto'

alias print_things='echo "foo" && echo "bar" && echo "baz"'

echo "Removing alias"
unalias print_things

# BASH_ALIASES is an associative array that contains all the aliases defined in the current shell session.
echo There are ${#BASH_ALIASES[*]} aliases defined.
for ali in "${!BASH_ALIASES[@]}"; do
 printf "alias: %-10s triggers: %s\n" "$ali" "${BASH_ALIASES[$ali]}"
done

#list all aliases
echo "Listing all aliases"
alias -p