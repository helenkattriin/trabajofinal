@echo off
if not "%_MAXIMIZED_%"=="YES" (set_MAXIMINIZED_=YES start ""/max "%~f0"%*exit)
chcp 65001
cls
echo.
msg * Has abierto Intelliji IDEA
:inicio
cls
color 01
echo.
echo.
echo(                                                                                           
echo(                       +++++++++++++++++++++++++++++++++++++++++++++++                     
echo(                       #*********************************************+                     
echo(                       #*********************************************+                     
echo(                       #*********************************************+                     
echo(                       #*****@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@******+                     
echo(                       #*****@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#*****+                     
echo(                       #*****@@@@@      @@@@@@@@  *@@@@@@@@@@@@#*****+                     
echo(                       #*****@@@@@@.  @@@@@@@@@@  #@@@@@@@@@@@@#*****+                     
echo(                       #*****@@@@@@   @@@@@@@@@@  #@@@@@@@@@@@@******+                     
echo(                       #*****@@@@@@   @@@@@@@@@@  #@@@@@@@@@@@@******+                     
echo(                       #*****@@@@@@   @@@@@@@@@@  *@@@@@@@@@@@@******+                     
echo(                       #*****@@@@@@   @@@@@  @@   @@@@@@@@@@@@@******+                     
echo(                       #*****@@@@@      @@@      @@@@@@@@@@@@@@******+                     
echo(                       #*****@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@******+                     
echo(                       #*****@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@******+                     
echo(                       #*****@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@******+                     
echo(                       #*****@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@******+                     
echo(                       #*****@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@******+                     
echo(                       #*****@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@******+                     
echo(                       #*****@@@@             @@@@@@@@@@@@@@@@@******+                     
echo(                       #*****@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@******+                     
echo(                       #*****@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@******+                     
echo(                       #*********************************************+                     
echo(                       #*********************************************+                     
echo(                       #*********************************************+                     
echo(                       ++++++++++++++++++++++++++++++++++++++++++++++-                     
echo(                                                                                           
echo(██ ███    ██ ████████ ███████ ██      ██      ██      ██ ██         ██ ██████  ███████  █████  
echo(██ ████   ██    ██    ██      ██      ██      ██      ██ ██         ██ ██   ██ ██      ██   ██ 
echo(██ ██ ██  ██    ██    █████   ██      ██      ██      ██ ██         ██ ██   ██ █████   ███████ 
echo(██ ██  ██ ██    ██    ██      ██      ██      ██ ██   ██ ██         ██ ██   ██ ██      ██   ██ 
echo(██ ██   ████    ██    ███████ ███████ ███████ ██  █████  ██         ██ ██████  ███████ ██   ██ 
echo(                                                                                               
pause
echo.
echo.
echo ¿Qué desea hacer ahora?
echo Si quiere abrir el proyecto de java pulse "a"
echo Si quiere ver el juego pulse "j"
echo Si lo que quiere es instalar Intelliji pulse "i"
echo.
echo.
set /p opcion=
if %opcion% ==a (start Main.java
start Hangman.java
start Inventario.java
start jugarAhorcado.java
start Game.java
start MapMatrix.java
start Option.java
start Player.java
start Scene.java
)
if %opcion% ==j start LOCA.java
echo.
if %opcion% ==i start ideaIU-2025.2.2.exe
pause
echo.
echo.
echo ¿Quieres hacer algo más? Escribe "y" o "n"
echo.
set /p respuesta=
if %respuesta% ==y goto inicio
if %respuesta% ==n exit