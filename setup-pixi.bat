@echo off
echo ========================================
echo Life After Coding Blog - Pixi Setup
echo ========================================
echo.

echo Checking if Quarto is installed...
quarto --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Quarto is not installed!
    echo.
    echo Please install Quarto from: https://quarto.org/docs/get-started/
    echo.
    echo After installation:
    echo 1. Close this terminal
    echo 2. Open a new terminal 
    echo 3. Run this script again
    echo.
    pause
    exit /b 1
) else (
    echo Quarto is installed!
    quarto --version
)

echo.
echo Checking if pixi is installed...
pixi --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Pixi is not installed!
    echo Installing pixi...
    powershell -Command "iwr -useb https://pixi.sh/install.ps1 | iex"
    if %errorlevel% neq 0 (
        echo.
        echo Failed to install pixi automatically.
        echo Please install pixi manually:
        echo.
        echo Option 1 - Using PowerShell:
        echo   iwr -useb https://pixi.sh/install.ps1 ^| iex
        echo.
        echo Option 2 - Download from GitHub:
        echo   https://github.com/prefix-dev/pixi/releases
        echo.
        echo Then run this script again.
        pause
        exit /b 1
    )
    echo.
    echo Pixi installed! Please restart your terminal and run this script again.
    pause
    exit /b 0
) else (
    echo Pixi is already installed!
    pixi --version
)

echo.
echo Setting up pixi project...
if not exist "pixi.lock" (
    echo Installing dependencies...
    pixi install
) else (
    echo Dependencies already installed. Updating...
    pixi update
)

echo.
echo ========================================
echo Pixi Setup Complete!
echo ========================================
echo.
echo Available commands:
echo.
echo Start pixi environment:
echo   pixi shell
echo.
echo Preview blog (auto-reload):
echo   pixi run preview
echo.
echo Render blog to _site folder:
echo   pixi run render
echo.
echo Clean generated files:
echo   pixi run clean
echo.
echo Check Quarto project:
echo   pixi run check
echo.
echo Development tasks:
echo   pixi run format     (format Python code)
echo   pixi run lint       (lint Python code)
echo   pixi run typecheck  (type check Python code)
echo.
echo For more info: https://pixi.sh/latest/
echo.
pause
