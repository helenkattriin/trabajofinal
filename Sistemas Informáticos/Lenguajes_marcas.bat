@echo off
if not "%_MAXIMIZED_%"=="YES" (set_MAXIMINIZED_=YES start ""/max "%~f0"%*exit)
chcp 65001
cls
msg * Has abierto Lenguaje de marcas
echo.
color 46
echo(██      ███████ ███    ██  ██████  ██    ██  █████       ██ ███████     ███    ███  █████  ██████   ██████  █████  ███████ 
echo(██      ██      ████   ██ ██       ██    ██ ██   ██      ██ ██          ████  ████ ██   ██ ██   ██ ██      ██   ██ ██      
echo(██      █████   ██ ██  ██ ██   ███ ██    ██ ███████      ██ █████       ██ ████ ██ ███████ ██████  ██      ███████ ███████ 
echo(██      ██      ██  ██ ██ ██    ██ ██    ██ ██   ██ ██   ██ ██          ██  ██  ██ ██   ██ ██   ██ ██      ██   ██      ██ 
echo(███████ ███████ ██   ████  ██████   ██████  ██   ██  █████  ███████     ██      ██ ██   ██ ██   ██  ██████ ██   ██ ███████ 
pause                                                                                                                           
echo.
echo.                                                                                                                       
echo ¿Que quiere hacer? Para ver el juego pulse "a"
echo. 
echo.
set /p abro=
if /abro% ==a start Visual_Studio_Code (
start Index.html
start Capitulo-1.html
start Capitulo-2A.html
start Capitulo-2B.html
start Capitulo-3A.html
start Capitulo-3B.html
start Capitulo-3BA.html
start Capitulo-3BB.html
start Capitulo-4S.html
start Final1.1.html
start Final1.html
start Final2.html
start Final3.html
start todo.css
pause