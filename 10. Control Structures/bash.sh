#!/usr/bin/env bash

# Toán tử kiểm tra tệp
# -e "$file": Trả về true nếu tệp tồn tại
# -d "$file": Trả về true nếu tệp tồn tại và là thư mục
# -f "$file": Trả về true nếu tệp tồn tại và là tệp thông thường
# -h "$file": Trả về true nếu tệp tồn tại và là liên kết tượng trưng

# Toán tử so sánh chuỗi
# -z "$str": True nếu độ dài chuỗi bằng không
# -n "$str": True nếu độ dài chuỗi khác không
# "$str" = "$str2": True nếu hai chuỗi bằng nhau
# "$str" != "$str2": True nếu hai chuỗi khác nhau

# Toán tử so sánh số nguyên
# "$int1" -eq "$int2": True nếu hai số bằng nhau
# "$int1" -ne "$int2": True nếu hai số khác nhau
# "$int1" -gt "$int2": True nếu int1 lớn hơn int2
# "$int1" -ge "$int2": True nếu int1 lớn hơn hoặc bằng int2
# "$int1" -lt "$int2": True nếu int1 nhỏ hơn int2
# "$int1" -le "$int2": True nếu int1 nhỏ hơn hoặc bằng int2

# if [[ $1 = "hello" ]]; then
#   echo "Hello World"
# elif [[ $1 = "goodbye" ]]; then
#   echo "Goodbye World"
# else
#   echo "Unknown command"
# fi

# arr=(
#   "hello"
#   "world"
#   "goodbye"
# )
# for i in "${arr[@]}"; do
#   echo "$i"
# done

# for ((i=0; i<10; i++)); do
#   echo $i
# done

# for i in {1..10}; do
#   computed=$((i * 10))
#   echo $computed
# done

# i=0
# while [[ $i -lt 10 ]]; do
#   echo $i
#   ((i++))
# done

# i=0
# until [[ $i -ge 10 ]]; do
#   echo $i
#   ((i++))
# done

# case $1 in
#   "hello")
#     echo "Hello World"
#     ;;
#   "goodbye")
#     echo "Goodbye World"
#     ;;
#   *)
#     echo "Unknown command"
#     ;;
# esac

# for arg; do
#   echo arg="$arg"
# done

# if [[ -e "text2.txt" ]]; then
#   echo "file existed"
# else
#   echo "file not exists"
# fi