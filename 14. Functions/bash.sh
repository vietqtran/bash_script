#!/usr/bin/env bash

# greet() {
#   local name="$1"
#   echo "Hello, $name"
# }
# greet "Viet"

# foo() {
#   echo "$@"
# }
# foo 1 2 3 4 5 6 7 8 9 10 11

# Default value
# foo() {
#   local val=${1:-25}
#   echo "$val"
# }
# foo
# foo 30

# Required
# foo() {
#   local val=${1:?Must provide an argument!}
#   echo "$val"
# }
# foo

# greet() {
#   echo "Hello"
# }
# greet
# bash -c 'greet' # fails
# export -f greet # export function; note -f
# bash -c 'greet' # success

# fun() {
#   local var="Sample value to be returned"
#   echo "$var"
# }
# var="$(fun)"
# echo $var

