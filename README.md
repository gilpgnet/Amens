# Amens
App sencilla para Android que muestra mensajes. Usa Android SDK.

## Ejecución
1. Prepara el dispositivo para ejecutar la app. Aquí se plantean 3 opciones:
   * [**Emulador Memu.**](https://www.memuplay.com/) Levanta el emulador y desde una terminal teclea el siguiente comando.
  
     ```Batchfile
        call adb connect 127.0.0.1:21503
     ```
  
   * **Emulador normal**.  Levanta el emulador y desde una terminal teclea el siguiente comando.
  
     ```Batchfile
        call adb connect 127.0.0.1
     ```
  
   * **Dispositivo externo** en modo desarrollador. Conecta el dispositivo por USB a tu computadora. Si usas Windows 10, está listo.
     Si es una versión menor, necesitas descargar el driver para tu teléfono del sitio del fabricante de este último, instalarlo
     y luego conectar tu dispositivo.
  
2. Abre una terminal y cámbiate a la carpeta del ejemplo descompactado. Por ejemplo, si descompactas el proyecto en la carpeta
   _C:\ejemplos_, introduce el comando
   ```Batchfile
        cd C:\ejemplos\Amens-master
   ```
  
3. Ejecuta el comando
   ```Batchfile
        call Amens
   ```
