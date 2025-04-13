#!/bin/bash
SERVICE="nginx"
STATUS=$(systemctl is-active $SERVICE)

case $STATUS in
  active)
    echo "$SERVICE is running."
    ;;
  inactive)
    echo "$SERVICE is stopping. Suggest: sudo systemctl start $SERVICE"
    ;;
  failed)
    echo "$SERVICE has some trouble. Suggest: sudo journalctl -xe"
    ;;
  *)
    echo "Status Unknown: $STATUS"
    ;;
esac
