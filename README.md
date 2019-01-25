# Amens
App sencilla para Android que muestra mensajes. Usa Android SDK.

Si tu computadora presenta problemas para compilar o ejecutar el código, puedes probar la versión para
AIDE IDE: https://github.com/gilpgnet/AideMens.

## Estructura
- **res** contiene archivos en formato xml e imágenes
  - **layout** almacena las interfaces gráficas, también conocidas como vistas, en formato xml.
    - **[activity_main.xml](/res/layout/activity_main.xml)**
  - **values**
    - **[strings.xml](/res/values/strings.xml)**
- **src** contiene paquetes con código fuente. Debe tener al menos dos niveles antes de los archivos java.
  - **com**
    - **amens**
      - **[MainActivity.java](/src/com/amens/MainActivity.java)**
- **[AndroidManifest.xml](/AndroidManifest.xml)**
- **[Amens.bat](/Amens.bat)**

## Ejecución en Windows
Las instrucciones que siguen te muestran como ejecutar el código desde Windows. Si deseas ver como ejecutarlo desde VS Code, cliquea [aquí](https://drive.google.com/open?id=1wPL3nJTATd5CVBspXRgYBxc-wG-W-GE91_XbgH4HsBo)
1. Modifica la línea 5 del archivo _Amens.bat_ y asigna el nombre de la carpeta de tu cuenta a la variable **CUENTA**.
2. Abre el Símbolo del Sistema (cmd).
3. Prepara el dispositivo para ejecutar la app. Aquí se plantean 3 opciones:
   * [**Emulador Memu.**](https://www.memuplay.com/) Levanta el emulador y desde una terminal teclea el siguiente comando.
  
     ```Batchfile
        call adb connect 127.0.0.1:21503
     ```
  
   * **Emulador normal.**  Levanta el emulador y desde una terminal teclea el siguiente comando.
  
     ```Batchfile
        call adb connect 127.0.0.1
     ```
  
   * **Dispositivo externo en modo desarrollador.** Conecta el dispositivo por USB a tu computadora. Si usas Windows 10, está listo.
     Si es una versión menor, necesitas descargar el driver para tu teléfono del sitio del fabricante, instalarlo y luego conectar tu
     dispositivo.
  
4. Abre una terminal y cámbiate a la carpeta del ejemplo descompactado. Por ejemplo, si descompactas el proyecto en la carpeta
   _C:\ejemplos_, introduce el comando
   ```Batchfile
        cd C:\ejemplos\Amens-master
   ```
  
5. Ejecuta el comando
   ```Batchfile
        call Amens
   ```
   Si solicita una contraseña, usa **android**.

6. Si la aplicación aborta inesperadamente, introduce el siguiente comando
   ```Batchfile
        call adb logcat > logcat.txt
   ```
   
   Teclea CTRL+C para terminar el comando. Revisa el contenido del archivo _logcat.txt_. Es algo largo, pero revísalo desde el final
   hacia el inicio.
