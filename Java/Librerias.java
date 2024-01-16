import java.util.*; // Hacemos la llamada a la libreria que vamos a usar
// Otra libreria que podemos usar en Java son:
/* 1- JDBC (Java Database Connectivity) para trabajar con bases de datos 
*    Es una interfaz estandar para acceder y manipular base de datos desde
*    el lenguaje de programación Java, sin tener que depender del sistema operativo
*    ni de un DBMS específico.
* 2- AWT (Abstract Window Toolkit), es una biblioteca gráfica para
* es una biblioteca gráfica para desarrollar aplicaciones de interfaz gráfica de usuario (GUI) en Java. 
* Es una biblioteca nativa, lo que significa que está implementada en código nativo del sistema operativo,
* en el que se ejecuta la aplicación. Esto hace que AWT sea eficiente y ofrezca una buena experiencia de usuario.
* por lo tanto no requiere ninguna clase auxiliar o wrapper.
*/
//import java.util.*; // Importante con el * le estamos diciendo al compilador que vamos a trabajar con toda la bibloteca.
// si solo queremos una parte de la bibloteca escribimos lo siguente:
//import java.util.Date;
// Para mas informacion de librerias visete la pagina de oracle: 
// http://https://docs.oracle.com/es-ww/iaas/jms/doc/java-libraries.html
public class Librerias {
    public static void main(String[] args) {
        try (Scanner sc = new Scanner(System.in)) {
            System.out.println("Ingrese el nombre del alumno: ");
            String nombre=sc.nextLine();
            System.out.println("\n Ingrese la edad del alumno ingrese un numero entero):");
            int edad=sc.nextInt();
            System.out.printf("\n El nombre del alumno es %s y tiene %d años.\n",nombre,edad);
        }
     
}

}
//Autor: Ing. Jesus Miguel Campos Corria

