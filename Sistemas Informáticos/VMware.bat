@echo off
if not "%_MAXIMIZED_%"=="YES" (set_MAXIMINIZED_=YES start ""/max "%~f0"%*exit)
chcp 65001
cls
msg * Has abierto VMware

