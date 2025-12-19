#!/usr/bin/env bash

echo "🎮 ARENA GAME"
echo "=========================="
echo "Starting Arena Server..."
echo ""

# Проверка Java
if ! command -v java &> /dev/null; then
    echo "❌ Java not found!"
    echo "Please install Java 11 or newer."
    exit 1
fi

# Проверка SWI-Prolog
if ! command -v swipl &> /dev/null; then
    echo "⚠️  SWI-Prolog not found!"
    echo "Prolog AI will not work correctly."
    echo "Install with: sudo apt install swi-prolog"
    echo ""
fi

# Запуск сервера
java -jar arena-game-standalone.jar server
