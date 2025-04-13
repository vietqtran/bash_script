#!/bin/bash
echo "Select action: add / del / list"
read action

case $action in
  add)
    read -p "Enter user name: " username
    sudo useradd $username && echo "Added user $username"
    ;;
  del)
    read -p "Enter user name: " username
    sudo userdel $username && echo "Deleted user $username"
    ;;
  list)
    cut -d: -f1 /etc/passwd
    ;;
  *)
    echo "Invalid selection"
    ;;
esac