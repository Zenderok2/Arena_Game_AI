@echo off
title Arena Game

echo 🎮 ARENA GAME
echo ==========================
echo Starting Arena Server...
echo.

:: Проверка Java
java -version >nul 2>&1
if errorlevel 1 (
    echo ❌ Java not found!
    echo Please install Java 11 or newer.
    pause
    exit /b
)

:: Проверка SWI-Prolog
swipl --version >nul 2>&1
if errorlevel 1 (
    echo ⚠️  SWI-Prolog not found!
    echo Prolog AI may not work correctly.
    echo Download from: https://www.swi-prolog.org
    echo.
)

:: Запуск сервера
java -jar arena-game-standalone.jar server

pause
