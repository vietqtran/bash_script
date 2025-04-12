#!/usr/bin/env bash

# Cretae a new process
sleep 10

# Create a background process
sleep 10 &

# To bring a background process to the foreground
fg %1

# To bring a background process to the background
bg %1

# Check which processes are running on specific ports
lsof -i :8080

# List current jobs
tail -f /var/log/syslog > log.txt

# Finding information about a process
ps aux | grep bash

# List all processes
ps -ef

# List all processes in alternative format
ps aux