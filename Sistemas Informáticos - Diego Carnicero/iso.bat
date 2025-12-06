@echo off
if not "%_MAXIMIZED_%"=="YES" (set_MAXIMINIZED_=YES start ""/max "%~f0"%*exit)
chcp 65001
cls
msg * Has abierto ISO
echo.
echo.
@echo off
color 70
echo(     ██ ███████  ██████  
echo(     ██ ██      ██    ██ 
echo(     ██ ███████ ██    ██ 
echo(     ██      ██ ██    ██ 
echo(     ██ ███████  ██████  
echo(                     
echo.
echo.
echo ¿Quieres instalar Windows 11? Pulsa "i" si es así, sino pulse "n"
echo.
set /p opcion=
if %opcion% ==i start https://www.microsoft.com/es-es/software-download/windows11?msockid=28b134ed37c86a2b17fc22cc36e36b55
pause
echo.
echo.
echo ¿Quiere abrir iso?
echo.
set /p opcion=
if %opcion% ==a Win_XP_32.iso
pause