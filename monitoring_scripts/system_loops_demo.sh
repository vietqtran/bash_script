#!/bin/bash

echo "===== FOR: Check IP LAN ====="
for ip in 192.168.1.1 192.168.1.2 192.168.1.3 192.168.1.10 192.168.1.11
do
  echo -n "▶️  $ip: "
  ping -c 1 -W 1 $ip &>/dev/null && echo "Có phản hồi" || echo "Không phản hồi"
done

echo ""
echo "===== WHILE: Đợi dịch vụ nginx sẵn sàng ====="
retries=0
while ! systemctl is-active --quiet nginx
do
  echo "nginx chưa chạy... chờ 2s (lần $retries)"
  sleep 2
  ((retries++))
  if [ $retries -ge 5 ]; then
    echo "nginx không sẵn sàng sau 5 lần thử"
    break
  fi
done

echo ""
echo "===== UNTIL: Chạy vòng lặp cho đến khi RAM dưới 80% ====="
until [ $(free | awk '/Mem:/ {printf("%.0f", $3/$2 * 100)}') -lt 80 ]
do
  echo "RAM đang cao, chờ giảm xuống... (sleep 5s)"
  sleep 5
done
echo "✅ RAM đã dưới 80%"

