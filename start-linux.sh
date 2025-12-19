#!/usr/bin/env bash

echo "=========================="
echo "       ARENA GAME"
echo "=========================="
echo "1 - Start Server"
echo "2 - Start Client"
read -p "Choose mode (1 or 2): " choice

if [ "$choice" = "1" ]; then
  java -jar arena-game-standalone.jar server
elif [ "$choice" = "2" ]; then
  java -jar arena-game-standalone.jar client
else
  echo "Invalid choice"
fi
