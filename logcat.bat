@echo off
rem Permite ver la bitácora del dispositivo conectado. Lánzalo en una ventana
rem independiente antes de ejecutar la aplicación.
PATH=C:\AndroidSdk\platform-tools;%PATH%
cd /d %0\..
call adb logcat > logcat.txt
pause