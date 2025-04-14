#!/usr/bin/env bash

find . -name "myFile.txt"
echo
find . -name "*.txt"
echo
find . -name "*.txt" -o -name "*.sh" # or
echo
# To find files/directories which name begin with abc and end with one alpha character following a one digit:
find . -name "ab[a-z]"

# To find all files/directories located in a specific directory
find /folder
# To search for files only (not directories), use -type f:
find /folder -type f
# To search for directories only (not regular files), use -type d:
find /folder -type d

# Sometimes we will need to run commands against a lot of files. This can be done using xargs.
find . -type d -print | xargs -r chmod 770

# To find files that have been modified within the last 2 hours:
# -mmin n : File was modified n minutes ago
# -mmin -n : File was modified less than n minutes ago
# -mmin +n : File was modified more than n minutes ago
find . -mmin -120
find . -amin -120
find . -cmin +120

# Finding files according to size
find -type f -size +15M
find -type f -size -12k
find -type f -size 12k
find -type f -size 12288c
find -type f -size 24b
find -type f -size 24

# Filter the path
find . -type f -path '*log*'
# To find only files within a folder called log (on any level):
find . -type f -path '*/log/*'
# To find only files within a folder called log or data:
# To find only files within a folder called log or data:
find . -type f -path '*/log/*' -o -path '*/data/*'
# To find all files except the ones contained in a folder called bin:
find . -type f -not -path '*/bin/*'
# To find all file all files except the ones contained in a folder called bin or log files:
find . -type f -not -path '*log' -not -path '*/bin/*'

# Finding files by type
find . -type f
find . -type d

# Finding files by specific extension
find /directory/to/search -maxdepth 1 -type f -name "*.extension"
# To find all files of type .txt from the current directory alone, do
find . -maxdepth 1 -type f -name "*.txt"