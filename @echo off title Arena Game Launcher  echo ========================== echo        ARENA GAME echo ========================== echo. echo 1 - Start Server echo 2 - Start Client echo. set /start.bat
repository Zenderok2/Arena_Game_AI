@echo off
title Arena Game Launcher

echo ==========================
echo        ARENA GAME
echo ==========================
echo.
echo 1 - Start Server
echo 2 - Start Client
echo.
set /p choice=Choose mode (1 or 2): 

if "%choice%"=="1" (
    java -jar arena-game-standalone.jar server
) else if "%choice%"=="2" (
    java -jar arena-game-standalone.jar client
) else (
    echo Invalid choice
)

pause
