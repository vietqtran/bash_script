#!/bin/bash
ram=$(free | awk '/Mem:/ { printf("%.0f", $3/$2 * 100) }')
disk=$(df / | awk 'NR==2 { print $5 }' | sed 's/%//')

if [ $ram -gt 80 ] || [ $disk -gt 80 ]; then
  echo "⚠️ RAM hoặc Disk đang vượt ngưỡng!"
else
  echo "✅ RAM và Disk đang ổn định."
fi
