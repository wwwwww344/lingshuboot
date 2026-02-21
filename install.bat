@echo off

:: lingshuOS Installer
:: Windows Version

:: Get current directory and set lingshuOS paths
set "CURRENT_DIR=%cd%"
echo Current directory: %CURRENT_DIR%

:: Set lingshuOS root directory (get parent directory of this script)
set "LINGSHUOS_ROOT=%~dp0"
echo lingshuOS root directory: %LINGSHUOS_ROOT%

set "LINGSHUOS_BIN=%LINGSHUOS_ROOT%bin"
echo lingshuOS bin directory: %LINGSHUOS_BIN%

echo lingshuOS Windows开发版操作系统安装

echo 1. 设置环境变量...

:: Check if running as administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo 错误: 需要以管理员身份运行
    echo 请右键点击此脚本并选择"以管理员身份运行"
    pause
    exit /b 1
)

:: Add lingshuOS to system PATH
:: Get current PATH
echo 获取当前PATH...
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v PATH') do set "CURRENT_PATH=%%a%%b"
echo 当前PATH: %CURRENT_PATH%

:: Remove existing lingshuOS paths from PATH
set "NEW_PATH=%CURRENT_PATH%"

:: Remove all lingshuOS-related paths from PATH using a different approach
:: First, split PATH into individual directories and process each one
set "TEMP_PATH=%NEW_PATH%"
set "NEW_PATH="

:process_path
:: Extract the first directory from TEMP_PATH
for /f "tokens=1* delims=;" %%a in ("%TEMP_PATH%") do (
    set "DIR=%%a"
    set "TEMP_PATH=%%b"
)

:: Check if the directory contains "lingshuos" or "lingos"
echo %DIR% | findstr /i "lingshuos lingos" >nul
if errorLevel 1 (
    :: If it doesn't contain "lingshuos" or "lingos", add it to NEW_PATH
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

echo 新PATH (移除现有lingshuOS路径): %NEW_PATH%

echo 添加 %LINGSHUOS_BIN% 到系统PATH...
setx PATH "%LINGSHUOS_BIN%;%NEW_PATH%" /M
if %errorLevel% equ 0 (
    echo 成功: 将lingshuOS添加到系统PATH
) else (
    echo 警告: 无法添加PATH，可能需要手动配置
)

echo 2. 创建快捷方式...

:: Create desktop shortcut
set "DESKTOP=%USERPROFILE%\Desktop"
set "SHORTCUT=%DESKTOP%\lingshuOS.lnk"
echo 创建快捷方式: %SHORTCUT%

if exist "%SHORTCUT%" (
    echo 删除现有快捷方式...
    del "%SHORTCUT%"
)

:: Create shortcut using PowerShell
echo 创建新快捷方式...
powershell -Command "$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%SHORTCUT%'); $Shortcut.TargetPath = '%LINGSHUOS_BIN%\lingshuos.bat'; $Shortcut.WorkingDirectory = '%LINGSHUOS_ROOT%'; $Shortcut.Save()"

if %errorLevel% equ 0 (
    echo 成功: 创建桌面快捷方式
) else (
    echo 警告: 无法创建快捷方式
)

echo 3. 验证安装...

:: Verify installation
echo 验证安装...
%LINGSHUOS_BIN%\lingshuos.bat version
if %errorLevel% equ 0 (
    echo 成功: lingshuOS安装验证通过
) else (
    echo 警告: lingshuOS安装验证失败
)

echo.
echo lingshuOS Windows开发版操作系统安装完成!
echo.
echo 使用方法:
echo 1. 在CMD或PowerShell中直接运行: lingshuos
echo 2. 双击桌面快捷方式启动
echo 3. 运行 "lingshuos help" 查看命令帮助

echo.
pause
