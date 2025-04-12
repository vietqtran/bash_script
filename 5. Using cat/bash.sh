#!/usr/bin/env bash

echo "cat all files and write to a file"
cat file1.txt file2.txt file3.txt > files.txt

echo "lowwercase all letters in files.txt"
tr A-Z a-z < files.txt

echo "uppercase all letters in files.txt"
tr a-z A-Z < files.txt

echo "reverse the order of lines in files.txt"
tac files.txt

echo "sort the lines in files.txt"
cat -n files.txt

echo "show non printable characters in files.txt"
cat -v files.txt

echo "read from stdin and write to files.txt"
cat > files.txt


echo "Hello world" > hello.txt
echo "Howdy world!" > howdy.txt
gzip hello.txt 
gzip howdy.txt 
cat het
cat ./hello.txt.gz ./howdy.txt.gz > greeting.txt.gz
gunz
gunzip greeting.txt.gz 
cat gre
cat greeting.txt 