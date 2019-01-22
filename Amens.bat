@echo off

rem Configuración
SET ANDROID_SDK=C:\AndroidSdk
SET CUENTA=gil
SET APP_NAME=Amens
SET DIR_APP=com\amens
SET APP=com.amens/.MainActivity

rem rutas
SET PLATFORM="%ANDROID_SDK%\platforms\android-27\android.jar"
SET KEY_STORE=C:\Users\%CUENTA%\.android\debug.keystore

rem posicionarse en la carpeta de la aplicación.
cd /d %0\..

echo "Limpiando..."
rmdir /S /Q bin
rmdir /S /Q gen
mkdir bin
mkdir gen

echo "Generando R.java..."
call aapt package -m -f -I %PLATFORM% -M AndroidManifest.xml -S res ^
  -J gen -F bin\%APP_NAME%.noalineado.apk

echo "Compilando..."
call %JAVA_HOME%\bin\javac -bootclasspath %PLATFORM% -sourcepath "src;gen" -d bin ^
  src\%DIR_APP%\*.java  gen\%DIR_APP%\*.java

echo "Traduciendo bytecode Dalvik..."
call dx --dex --output=classes.dex bin

echo "Creando APK..."
call aapt add "bin\%APP_NAME%.noalineado.apk" classes.dex

echo "Alineando y firmando APK..."
call zipalign -f 4 "bin\%APP_NAME%.noalineado.apk" "bin\%APP_NAME%.apk"
call apksigner sign --ks "%KEY_STORE%" "bin\%APP_NAME%.apk"
copy "bin\%APP_NAME%.apk" .

echo "Limpiando..."
del classes.dex
rmdir /S /Q gen
rmdir /S /Q bin

echo "Ejecutando..."
call adb install -r %APP_NAME%.apk
call adb shell am start -n %APP%
