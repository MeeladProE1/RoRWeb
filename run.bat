@echo off
setlocal
cd /d "%~dp0"

echo.
echo  ============================================
echo    Rigs of Rods - Web (WebAssembly build)
echo  ============================================
echo.
echo    Starting local server at http://localhost:8000/
echo    Your browser will open automatically.
echo    Close this window to stop the server.
echo.

rem Open the browser after a short delay so the server is already listening.
start "" /b cmd /c "timeout /t 2 /nobreak >nul & start "" http://localhost:7861/"

rem Serve the web/ folder with the cross-origin-isolation headers.
"python\Scripts\python.exe" server.py

endlocal
