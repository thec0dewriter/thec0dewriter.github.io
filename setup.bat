@echo off
echo ========================================
echo Life After Coding Blog Setup
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
echo Checking Python installation...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed!
    echo Please install Python from: https://python.org
    echo.
    pause
    exit /b 1
) else (
    echo Python is installed!
    python --version
)

echo.
echo Choose your Python package manager:
echo 1. pip (default)
echo 2. pixi (conda-based, recommended)
echo.
set /p choice="Enter your choice (1 or 2): "

if "%choice%"=="2" (
    echo.
    echo Checking if pixi is installed...
    pixi --version >nul 2>&1
    if %errorlevel% neq 0 (
        echo Pixi is not installed!
        echo Installing pixi...
        powershell -Command "iwr -useb https://pixi.sh/install.ps1 | iex"
        if %errorlevel% neq 0 (
            echo Failed to install pixi automatically.
            echo Please install pixi manually from: https://pixi.sh
            echo Then run this script again.
            pause
            exit /b 1
        )
    ) else (
        echo Pixi is already installed!
        pixi --version
    )
    
    echo.
    echo Setting up pixi project...
    if not exist "pixi.toml" (
        pixi init --import-environment
    )
    
    echo.
    echo Installing Python dependencies with pixi...
    pixi add python jupyter matplotlib plotly pandas numpy seaborn
    
    echo.
    echo ========================================
    echo Setup Complete with Pixi!
    echo ========================================
    echo.
    echo To activate the pixi environment:
    echo   pixi shell
    echo.
    echo To preview your blog (in pixi environment):
    echo   pixi run quarto preview
    echo.
    echo To render your blog (in pixi environment):
    echo   pixi run quarto render
    echo.
) else (
    echo.
    echo Installing Python dependencies with pip...
    pip install jupyter matplotlib plotly pandas numpy seaborn
    
    echo.
    echo ========================================
    echo Setup Complete with pip!
    echo ========================================
    echo.
    echo To preview your blog:
    echo   quarto preview
    echo.
    echo To render your blog:
    echo   quarto render
    echo.
)
echo.
echo To preview your blog:
echo   quarto preview
echo.
echo To render your blog:
echo   quarto render
echo.
echo The rendered site will be in the _site folder.
echo.
pause
