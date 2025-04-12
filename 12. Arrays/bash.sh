#!/usr/bin/env bash

array=(1 2 3 4 5)
echo "Array: ${array[@]}"

array[0]=10
echo "Updated Array: ${array[@]}"

# Assign name
declare -A names
names[alice]="Alice"
names[bob]="Bob"
names[charlie]="Charlie"
echo "Names: ${names[alice]} ${names[bob]} ${names[charlie]}"

# Dynamic array
array=(`seq 1 10`)
echo "Dynamic Array: ${array[@]}"

# Assignment from script's input arguments
array=("$@")
echo "Array from script's input arguments: ${array[@]}"

# Assignment within loops
while read -r; do
  array[$i]="$REPLY"
  ((i++))
done < <(seq 1 5)
echo "Array from loop: ${array[@]}"

# Print element at index 0
echo "Element at index 0: ${array[0]}"

# Print last element
echo "Last element: ${array[-1]}"
echo "Last element: ${array[@]: -1}"

# Print all elements
echo "All elements: ${array[@]}"

# Print all elements as a single quoted string
echo "All elements as a single quoted string: ${array[*]}"

# Print all elements from index 1, each quoted separately
echo "All elements from index 1, each quoted separately: ${array[@]:1}"

# Print 3 elements from index 1, each quoted separately
echo "3 elements from index 1, each quoted separately: ${array[@]:1:3}"

array=(zero one two)
echo "${array[0]:0:3}"
echo "${array[0]:1:3}" 

# Array modification
# Change index
array[0]=zeroooo
echo "Array after changing index 0: ${array[@]}"

# Append
array+=(three, four)
echo "Array after append: ${array[@]}"

# Add element at begin
array=("zero" "${array[@]}")
echo "Array after add begin: ${array[@]}"

# Insert
arr=(a b c d)
i=2
arr=("${arr[@]:0:$i}" 'new' "${arr[@]:$i}")
echo "${arr[2]}"

# Delete
arr=(a b c)
echo "${arr[@]}" # outputs: a b c
echo "${!arr[@]}" # outputs: 0 1 2
unset -v 'arr[1]'
echo "${arr[@]}" # outputs: a c
echo "${!arr[@]}" # outputs: 0 2

# Merge
array1=(0 1 2 3 4 5)
array2=(6 7 8 9 10)
array3=("${array1[@]}" "${array2[@]}")
echo "Merged array: ${array3[@]}"

# Array Iteration
a=(1 2 3 4)
for y in "${a[@]}"; do
 echo "$y"
done

for ((idx=0; idx < ${#a[@]}; ++idx)); do
 echo "${a[$idx]}"
done

a=($(tr ',' ' ' <<<"a,b,c,d")) # tr can transform one character to another
for y in "${a[@]}"; do
 echo "$y"
done

# Array length
array=('first element' 'second element' 'third element')
echo "${#array[@]}"

# Length of element
echo "${#array[0]}" 

# Associative Arrays
declare -A aa
aa[hello]=world
aa[ab]=cd
aa["key with space"]="hello world"
aa=([hello]=world [ab]=cd ["key with space"]="hello world")
echo "Associative Arrays: ${aa[@]}"
echo "Keys: ${!aa[@]}"

for key in "${!aa[@]}"; do
  echo "Key: ${key}"
  echo "Value: ${array[$key]}"
done

# Looping through an array
for i in "${arr[@]}"; do
  echo "$i"
done

for ((i=0;i<${#arr[@]};i++)); do
  echo "${arr[$i]}"
done

i=0
while [ $i -lt ${#arr[@]} ]; do
  echo "${arr[$i]}"
  i=$((i + 1))
done

i=0
while (( $i < ${#arr[@]} )); do
  echo "${arr[$i]}"
  ((i++))
done

i=0
until [ $i -ge ${#arr[@]} ]; do
  echo "${arr[$i]}"
  i=$((i + 1))
done

i=0
until (( $i >= ${#arr[@]} )); do
  echo "${arr[$i]}"
  ((i++))
done

# Destroy array
unset array
unset array[1]

# Array from string
stringVar="Apple Orange Banana Mango"
arrayVar=(${stringVar// / })
echo ${arrayVar[0]} # will print Apple
echo ${arrayVar[3]} # will print Mango

stringVar="Apple+Orange+Banana+Mango"
arrayVar=(${stringVar//+/ })
echo ${arrayVar[0]} # will print Apple
echo ${arrayVar[2]} # will print Banana

# List index
arr[2]='second'
arr[10]='tenth'
arr[25]='twenty five'
echo ${!arr[@]}

# Read entire file
IFS=$'\n' read -r -a arr < ./text.txt
arr=()
while IFS= read -r line; do
  arr+=("$line")
done
mapfile -t arr < ./text.txt
readarray -t arr < ./text.txt