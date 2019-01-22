@echo off
rem Permite ver la bitácora del dispositivo conectado. Lánzalo en una ventana
rem independiente antes de ejecutar la aplicación.
cd /d %0\..
call adb logcat > logcat.txt
