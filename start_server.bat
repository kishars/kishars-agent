@echo off
cd /d "%~dp0"
:: 关闭之前可能还在运行的 8000 端口服务
taskkill /f /im python.exe >nul 2>nul

start "" python -m http.server 8000
ping 127.0.0.1 -n 3 >nul
echo Server started.
pause