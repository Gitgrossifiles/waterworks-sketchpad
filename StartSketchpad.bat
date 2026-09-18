@echo off
cd /d "%~dp0"
echo Starting local server...
start "" python -m http.server 8010
timeout /t 2 >nul
start "" http://localhost:8010/index.html
exit
