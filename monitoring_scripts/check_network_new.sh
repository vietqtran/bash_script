#!/bin/bash

# Check OS
if [ -f /etc/os-release ]; then
  . /etc/os-release
  OS=$ID
else
  echo "Cannot define OS."
  exit 1
fi

# Check ping command
if ! command -v ping &> /dev/null; then
  echo "Ping command not found. Please install it..."

  case $OS in
    ubuntu|debian)
      sudo apt update && sudo apt install -y iputils-ping
      ;;
    centos|rhel|rocky|almalinux)
      sudo yum install -y iputils
      ;;
    *)
      echo "Cannot support install ping in: $OS"
      exit 1
      ;;
  esac
fi

# Check internet
if ping -c 1 8.8.8.8 > /dev/null; then
  echo "Internet is good"
else
  echo "Internet is not connected, please check it!"
fi
