@echo off

cd /d "%~dp0"

echo =========================
echo Normalize Logs
echo =========================

powershell -NoProfile -ExecutionPolicy Bypass -File .\log_input\normalize.ps1

echo.
echo =========================
echo Execute Main Parser
echo =========================

powershell -NoProfile -ExecutionPolicy Bypass -File .\main.ps1

pause