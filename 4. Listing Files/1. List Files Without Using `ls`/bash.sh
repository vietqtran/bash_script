#!/usr/bin/env bash

echo "display the files and directories that are in the current directory"
printf "%s\n" *
echo "display only the directories in the current directory"
printf "%s\n" */
echo "display only (some) image files"
printf "%s\n" *.{gif,jpg,png}

echo "display only the files that are in the current directory"
files=( * )
# iterate over them
for file in "${files[@]}"; do
 echo "$file"
done

echo "list files as tree"
tree ./

echo "Use the tree command's -L option to limit the display depth and the -d option to only list directories."
tree -L 1 -d ./

echo "List files sorted by size"
ls -l -S

echo "List files sorted by size in reverse order"
ls -l -S -r