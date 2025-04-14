#!/usr/bin/env bash

# Upper case
v="hello"
printf '%s\n' "${v^}"
printf '%s\n' "${v^^}"
v="hello world"
declare -u string="$v"
echo "$string"

# Lower case
v="BYE"
printf '%s\n' "${v,}"
printf '%s\n' "${v,,}"
v="HELLO WORLD"
declare -l string="$v"
echo "$string"

# Toggle case
v="Hello World"
echo "${v~~}"
echo "${v~}"

# Replace pattern in string
# First match
a='I am a string'
echo "${a/a/A}"
# All match
a='I am a string'
echo "${a//a/A}"
# Match at the beginning
a='I am a string'
echo "${a/#I/y}"
# Match at the end
a='I am a string'
echo "${a/%g/N}"
# Replace a pattern with nothing
a='I am a string'
echo "${a/g/}"
# Add prefix to array items
A=(hello world)
echo "${A[@]/#/R}"

# Substrings and subarrays
var='0123456789abcdef'
# Define a zero-based offset
echo "${var:3}"
# Offset and length of substring
echo "${var:3:4}"
# Negative length counts from the end of the string
echo "${var:3:-5}"
# Negative offset counts from the end
# Needs a space to avoid confusion with ${var:-6}
echo "${var: -6}"
# Alternative: parentheses
echo "${var:(-6)}"
# Negative offset and negative length
echo "${var: -6:-5}"

# Delete a pattern from the beginning of a string
# Shortest match
a='I am a string'
echo "${a#*a}"

# Parameter indirection
red="the color red"
green="the color green"
color="red"
echo "${!color}"
color="green"
echo "${!color}"

foo=10
x=foo
echo ${x} # Output: foo
foo=10
x=foo
echo ${!x} # Output: 10

# Default value substitution
# Just display value
unset var
echo "${var:-XX}"
var=""
echo "${var:-XX}"
# Assign value
unset var
echo "${var:=XX}"
var=""
echo "${var:=XX}"

v=foo-bar-baz
echo ${v%%-*}
echo ${v%-*}
echo ${v##*-}
echo ${v#*-}

FOO=
# line 4: FOO: EMPTY
echo "FOO is ${FOO:?EMPTY}"
# FOO is
echo "FOO is ${FOO?UNSET}"
# line 8: BAR: EMPTY
echo "BAR is ${BAR:?EMPTY}"
# line 10: BAR: UNSET
echo "BAR is ${BAR?UNSET}"