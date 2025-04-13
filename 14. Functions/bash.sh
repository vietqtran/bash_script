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