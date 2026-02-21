@echo off

:: Lingos AI Operation Script Installer
:: Windows Version

:: Get current directory and set Lingos paths
set "CURRENT_DIR=%cd%"
echo Current directory: %CURRENT_DIR%

:: Set Lingos root directory (get parent directory of this script)
set "LINGOS_ROOT=%~dp0"
echo Lingos root directory: %LINGOS_ROOT%

set "LINGOS_BIN=%LINGOS_ROOT%bin"
echo Lingos bin directory: %LINGOS_BIN%

echo Lingos AI Operation Script Installation

echo 1. Setting environment variables...

:: Check if running as administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Error: Need to run as administrator
    echo Please right-click this script and select "Run as administrator"
    pause
    exit /b 1
)

:: Add Lingos to system PATH
:: Get current PATH
echo Getting current PATH...
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v PATH') do set "CURRENT_PATH=%%a%%b"
echo Current PATH: %CURRENT_PATH%

:: Remove existing Lingos paths from PATH
set "NEW_PATH=%CURRENT_PATH%"

:: Remove all Lingos-related paths from PATH using a different approach
:: First, split PATH into individual directories and process each one
set "TEMP_PATH=%NEW_PATH%"
set "NEW_PATH="

:process_path
:: Extract the first directory from TEMP_PATH
for /f "tokens=1* delims=;" %%a in ("%TEMP_PATH%") do (
    set "DIR=%%a"
    set "TEMP_PATH=%%b"
)

:: Check if the directory contains "lingos"
echo %DIR% | findstr /i "lingos" >nul
if errorLevel 1 (
    :: If it doesn't contain "lingos", add it to NEW_PATH
    if defined NEW_PATH (
        set "NEW_PATH=%NEW_PATH%;%DIR%"
    ) else (
        set "NEW_PATH=%DIR%"
    )
)

:: Continue processing if there are more directories
if defined TEMP_PATH goto process_path

:: Handle case where NEW_PATH is empty
if not defined NEW_PATH set "NEW_PATH=%CURRENT_PATH%"

echo New PATH (without existing Lingos paths): %NEW_PATH%

echo Adding %LINGOS_BIN% to system PATH...
setx PATH "%LINGOS_BIN%;%NEW_PATH%" /M
if %errorLevel% equ 0 (
    echo Success: Added Lingos to system PATH
) else (
    echo Warning: Failed to add PATH, may need manual configuration
)

echo 2. Creating shortcut...

:: Create desktop shortcut
set "DESKTOP=%USERPROFILE%\Desktop"
set "SHORTCUT=%DESKTOP%\Lingos.lnk"
echo Creating shortcut at: %SHORTCUT%

if exist "%SHORTCUT%" (
    echo Deleting existing shortcut...
    del "%SHORTCUT%"
)

:: Create shortcut using PowerShell
echo Creating new shortcut...
powershell -Command "$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%SHORTCUT%'); $Shortcut.TargetPath = '%LINGOS_BIN%\lingos.bat'; $Shortcut.WorkingDirectory = '%LINGOS_ROOT%'; $Shortcut.Save()"

if %errorLevel% equ 0 (
    echo Success: Created desktop shortcut
) else (
    echo Warning: Failed to create shortcut
)

echo 3. Verifying installation...

:: Verify installation
echo Verifying installation...
%LINGOS_BIN%\lingos.bat version
if %errorLevel% equ 0 (
    echo Success: Lingos installation verified
) else (
    echo Warning: Lingos installation verification failed
)

echo.
echo Lingos AI Operation Script Installation Complete!
echo.
echo Usage:
echo 1. Run directly in CMD or PowerShell: lingos
echo 2. Double-click desktop shortcut to launch
echo 3. Run "lingos help" to view command help

echo.
pause
