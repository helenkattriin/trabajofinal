@echo off
if not "%_MAXIMIZED_%"=="YES" (set_MAXIMINIZED_=YES start ""/max "%~f0"%*exit)
chcp 65001
cls
msg * Has abierto GitHUB
echo.
echo.
echo(                      :=*#%#*+:                    
echo(                 -%###############=
echo(             :@@@@@@@@@@@@@@@@@@@@@@@=
echo(           =@@@@@@@@@@@@@@@@@@@@@@@@@@@*
echo(         :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-
echo(        =@@@@@#   :#@@@%%#%%@@@%=   *@@@@@*
echo(       -@@@@@@=                      @@@@@@+
echo(      :@@@@@@@#                     +@@@@@@@=
echo(      *@@@@@@@                       #@@@@@@%
echo(     :@@@@@@@:                        @@@@@@@-
echo(     -@@@@@@%                         *@@@@@@+
echo(     =@@@@@@@                         #@@@@@@* 
echo(     -@@@@@@@:                        @@@@@@@=
echo(      @@@@@@@@                       *@@@@@@@
echo(      =@@@@@@@%:                    %@@@@@@@#
echo(       @@@@++@@@@*:              *@@@@@@@@@@
echo(        #####  #######        @@@@@@@@@@@@@:
echo(         #@@@#  *@@@+         =@@@@@@@@@@%
echo(          -@@@#               :@@@@@@@@@+
echo(            =@@@@@@@+         :@@@@@@@#
echo(              :######         :@@@@@-
echo(                  =#-          #+
echo.
color 75
echo( ██████  ██ ████████ ██   ██ ██    ██ ██████  
echo(██       ██    ██    ██   ██ ██    ██ ██   ██ 
echo(██   ███ ██    ██    ███████ ██    ██ ██████  
echo(██    ██ ██    ██    ██   ██ ██    ██ ██   ██ 
echo( ██████  ██    ██    ██   ██  ██████  ██████  
pause        
echo.
echo.
echo.
echo ¿Qué quiere hacer?
echo Si quiere abrir GitHub pulse "a"
set /p opcion=
if %opcion% ==a start                                                                                    
