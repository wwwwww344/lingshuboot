@echo off

:: Test script for command processing

:: Use direct path to avoid encoding issues
echo Current directory: %cd%

:: Test help command
echo Testing help command...
python "lingos\core\cli.py" help

echo.
echo Testing version command...
python "lingos\core\cli.py" version

echo.
echo Testing lsp ls command...
python "lingos\core\cli.py" lsp ls

echo.
echo Test completed!
pause
