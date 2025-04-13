#!/bin/bash
SERVICE="nginx"
if systemctl is-active --quiet $SERVICE; then
  echo "✅ Dịch vụ $SERVICE đang chạy"
else
  echo "❌ Dịch vụ $SERVICE chưa chạy, khởi động..."
  systemctl start $SERVICE
fi
