#!/bin/bash
ping -c 1 8.8.8.8 > /dev/null
if [ $? -eq 0 ]; then
  echo "✅ Internet hoạt động"
else
  echo "❌ Không có kết nối mạng"
fi
