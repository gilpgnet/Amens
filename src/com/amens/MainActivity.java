//Paquete de la aplicación.
package com.amens;

/* Cuando en este archivo se usa la clase Activity, su nombre completo,
 * incluyendo el paquete es import android.app.Activity.*/
import android.app.Activity;
import android.os.Bundle;

/** La clase MainActivity, se puede usar desde cualquier paquete de la
 * aplicación (porque es public) y hereda de la clase Activity. */
public class MainActivity extends Activity {
  /* @Override que anota
   * protected void onCreate(Bundle savedInstanceState), indica que se
   * modifica la definición que la superclase AppCompatActivity tiene de
   * este método. Esto también significa que el método debe definirse en
   * la clase madre Activity. */
  @Override
  /* protected void onCreate(Bundle savedInstanceState) define un método
   * que corresponde al evento create. Cuando se lanza la aplicación o se
   * rota el dispositivo que ejecuta esta App, se crea una instancia de
   * esta clase y se invoca este método para iniciar su funcionamiento. Lo
   * mínimo que debe hacer es asociar una vista. */
  protected void onCreate(Bundle savedInstanceState) {
    /* Invoca la versión de este evento que está definida en la clase
    ¨* madre AppCompatActivity. Muchos de los métodos que se sobreescriben
     * en Android, deben invocar la versión de la superclase. */
    super.onCreate(savedInstanceState);
    /* Asigna la vista de esta activity. La clase R se genera
     * automáticamente en el paquete de la aplicación a partir del
     * contenido de la carpeta res. Para cada subcarpeta, por ejemplo
     * layout, se genera una clase interna; que en este caso, se llama
     * layout. Por cada archivo, se genera una constante entera, que en
     * este caso se llama activity_main. Si alguno de los archivos res
     * tiene algún error, la clase R no se genera. Esta clase nos ayuda a
     * introducir el nombre correcto para cada archivo. El proceso con el
     * cual se construye la interfaz gráfica a partir de un archivo xml de
     * Android se conoce como inflate (inflar). */
    setContentView(R.layout.activity_main);
  }
}