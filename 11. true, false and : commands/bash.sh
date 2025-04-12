#!/usr/bin/env bash

# Infinity loop

while true; do
  echo ok
done

while :; do
  echo ok
done

until false; do
  echo ok
done

# Function return
function positive() {
  return 0
}

function negative() {
  return 1
}

# Always/Never excute
if true; then
  echo "This will always execute"
fi

if false; then
  echo "This will never execute"
fi