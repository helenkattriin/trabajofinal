@echo off
if not "%_MAXIMIZED_%"=="YES" (set_MAXIMINIZED_=YES start ""/max "%~f0"%*exit)
chcp 65001
cls
msg * Has abierto Documentos
color g
echo(██████   ██████   ██████ ██    ██ ███    ███ ███████ ███    ██ ████████  ██████  
echo(██   ██ ██    ██ ██      ██    ██ ████  ████ ██      ████   ██    ██    ██    ██ 
echo(██   ██ ██    ██ ██      ██    ██ ██ ████ ██ █████   ██ ██  ██    ██    ██    ██ 
echo(██   ██ ██    ██ ██      ██    ██ ██  ██  ██ ██      ██  ██ ██    ██    ██    ██ 
echo(██████   ██████   ██████  ██████  ██      ██ ███████ ██   ████    ██     ██████  
echo(                                                                                 
echo(                                                                                 
pause
echo.
echo.
echo ¿Quiere abrir el documento? escriba "p" si es asi
set /p documento=
if %documento% ==p start
