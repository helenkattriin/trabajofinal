@echo off
if not "%_MAXIMIZED_%"=="YES" (set_MAXIMINIZED_=YES start ""/max "%~f0"%*exit)
chcp 65001
:inicio
cls
msg * Pagina de entrada
echo.
echo(                                           
echo(                                           
echo(                                           
echo(                                           
echo(                                           
echo(  ---------                     #########  
echo(   ---------                   #########   
echo(     ---------                ########     
echo(      ---------             #########      
echo(       ---------           #########       
echo(         ----####         #########        
echo(          #########      #########          
echo(           #########    #########           
echo(            ########   ########            
echo(              ######   #######              
echo(               *****   *****               
echo(              ******   ******              
echo(             *******   *******            
echo(           =====****   ****+++++           
echo(          =========     +++++++++          
echo(         ========        +++++++++        
echo(       ========           +++++++++       
echo(      ========             +++++++++      
echo(     ========               ++++++++     
echo(   =========                  ++++++++++   
echo(  =========                     +++++++++  
echo(                                           
echo(                                           
echo.
echo.
echo.
echo ████████ ██████   █████  ██████   █████       ██  ██████           ██         ████████ ██████  ██ ███    ███ ███████ ███████ ████████ ██████  ███████ 
echo    ██    ██   ██ ██   ██ ██   ██ ██   ██      ██ ██    ██         ███            ██    ██   ██ ██ ████  ████ ██      ██         ██    ██   ██ ██      
echo    ██    ██████  ███████ ██████  ███████      ██ ██    ██          ██            ██    ██████  ██ ██ ████ ██ █████   ███████    ██    ██████  █████   
echo    ██    ██   ██ ██   ██ ██   ██ ██   ██ ██   ██ ██    ██          ██            ██    ██   ██ ██ ██  ██  ██ ██           ██    ██    ██   ██ ██      
echo    ██    ██   ██ ██   ██ ██████  ██   ██  █████   ██████           ██            ██    ██   ██ ██ ██      ██ ███████ ███████    ██    ██   ██ ███████                                                                                                                                                                                                                                                                                                              
pause
echo.
echo.
echo ¿Dónde quieres entrar?
echo.
echo.
echo.
echo 1.Documento de presentación
echo.
echo 2.Documento de la presentación en PFD
echo.
echo 3.GitHUB
echo.
echo 4.Visual Studio Code (+dar la opción de descargarlo)
echo.
echo 5.Lenguaje de marcas
echo.
echo 6.Intelliji (+dar la opción de descargarlo)
echo.
echo 7.Acceso al PDF por Adobe/Chrome/Opera
echo.
echo 8.MySQL (+dar opción de descargarlo)
echo.
echo 9. VirtualBox (+opción descarga del software de virtualización VirtualBox, Instalación de VirtualBox)
echo.
echo 10. VMware (+ opción de descarga del software de virtualización VMware, Instalación de VMware)
echo.
echo 11. a descarga de la “iso” de Windows 11 y Ubuntu Server 25.10 
echo.
echo 12.a documentación, memoria, aplicación 
echo.
echo Mi opción:
set /p opcion=
if %opcion% ==1 goto documento
if %opcion% ==2 goto documento_pdf
if %opcion% ==3 goto github
if %opcion% ==4 goto visual_code
if %opcion% ==5 goto lenguaje_marcas
if %opcion% ==6 goto intelliji
if %opcion% ==7 goto pdf
if %opcion% ==8 goto mysql
if %opcion% ==9 goto virtualbox
if %opcion% ==10 goto vmware
if %opcion% ==11 goto iso
if %opcion% ==12 goto documentacion
echo.
echo.
:documento
start Documento.bat
exit



echo.
echo.
:documento_pdf

pause
exit
echo.
echo.


:github
start GitHub.bat
exit

:visual_code
start Visual.bat
exit


:lenguaje_marcas
start Lenguajes_marcas
exit


:intelliji
start intelliji.bat
exit


echo.
echo.
:pdf

pause
exit

echo.
echo.
:mysql
start MySQL.bat
pause
exit

echo.
echo.
:virtualbox

pause
exit

echo.
echo.
:vmware

pause
exit

echo.
echo.
:iso

pause
exit

echo.
echo.
:documentacion

pause
exit