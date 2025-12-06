@echo off
if not "%_MAXIMIZED_%"=="YES" (set_MAXIMINIZED_=YES start ""/max "%~f0"%*exit)
chcp 65001
cls
msg * Has abierto Virtual Studio Code
echo.
echo.                                                                                          
echo(                                                                                           
echo(                                                  #####                                    
echo(                                                ###########                                
echo(                                              ##############                              
echo(                                            #################                              
echo(                              ###         ###################                              
echo(                            #######     #####################                              
echo(                            ######################  #########                              
echo(                              #################     #########                              
echo(                                #############       #########                              
echo(                                #############       #########                              
echo(                              #################     #########                              
echo(                            ######################  #########                              
echo(                            #######     #####################                              
echo(                              ###         ###################                              
echo(                                            #################                              
echo(                                              ###############                              
echo(                                                ###########                                
echo(                                                  #####                                    
echo(                                                                                           
echo.
echo.
color 09
echo(██    ██ ██ ███████ ██    ██  █████  ██               ██████  ██████  ██████  ███████ 
echo(██    ██ ██ ██      ██    ██ ██   ██ ██              ██      ██    ██ ██   ██ ██      
echo(██    ██ ██ ███████ ██    ██ ███████ ██              ██      ██    ██ ██   ██ █████   
echo( ██  ██  ██      ██ ██    ██ ██   ██ ██              ██      ██    ██ ██   ██ ██      
echo(  ████   ██ ███████  ██████  ██   ██ ███████          ██████  ██████  ██████  ███████ 
echo.
pause
echo.
echo ¿Qué dese hacer?
echo Si quiere descargar Visual Code pulse d
echo Si quiere abrir Visual Code pulse a
echo.
set /p opcion=
if %opcion% ==d start VSCodeUserSetup-x64-1.104.1.exe
if %opcion% ==a start Visual_Studio_Code
pause                                                                                      
                                                                                      
