#!/usr/bin/env bash

ls >file.txt

# Truncate
# 1. Create specified file if it doesn't exist
# 2. Truncate (remove all content) if it does exist
# 3. Write to the file
echo "Hello World truncate" >file.txt

# Append
# 1. Create specified file if it doesn't exist
# 2. Append file (add to the end) if it does exist
echo "Hello World append" >>file.txt

# Redirect to /dev/null
echo "Hello World" > /dev/null 2>&1 # (Recommended)
echo "Hello World" &> /dev/null # (Shorthand for the above)

# Create pipe
mkfifo mypipe

# Write to pipe
echo "Hello World" > mypipe

# Read from pipe
cat < mypipe