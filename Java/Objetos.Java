// La fortaleza de Java es la programacion orientada a Objetos.
// En este archivo se presentan los conceptos fundamentales del lenguaje y su
// implementación en el framework J2EE (Java Platform, Enterprise Edition).
import java.io.BufferedReader; // Importamos las clases para manejar
import java.io.IOException;
import java.io.InputStreamReader;

// Clase Persona
class Persona  extends Objetos {
    private String nombre; // Atributo privado "nombre" de tipo cadena
    protected int edad; // Atributo protegido "edad" de tipo entrada
    public char sexo; // Atributo público "sexo" de tipo carácteres
    /* Constructor con parámetros */
    public Persona(String n, int e, char s) {
        nombre = n;
        edad = e;
        sexo = s;
    }
    /* Método getNombre() devuelve el valor del atributo "*/
    public String getNombre() {
        return nombre;
    }
     /* Método setNombre() asigna un nuevo valor al atributo*/
    public void setNombre(String n) {
        nombre = n;
    }
    /* Devuelve el valor del atributo "edad".*/
    public int getEdad() {
        return edad;
    }
    /* Modifica el valor del atributo "edad".*/
    public void setEdad(int e) {
        edad = e;
    }

    public char getSexo() {
        return sexo;
    }
}			
// Clase principal Objetos
public class Objetos {
    public static void main(String[] args) throws IOException {
        BufferedReader ent = new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Ingrese su nombre: ");
        String name = ent.readLine();

        System.out.print("\nHola " + name);
        System.out.println(", ¿Cuál es tu edad?");
        int age = Integer.parseInt(ent.readLine());

        if (age < 18)
            System.out.println("Eres menor de edad.");
        else
            System.out.println("Eres mayor de edad.");

        System.out.print("\n¿Es hombre o mujer? ");
        char gender = ent.readLine().charAt(0);

        Persona per = new Persona(name, age, gender);
        System.out.println("\n Tu nombre es \"" + per.getNombre());
        System.out.println("Y tienes " + per.getEdad() + " años y eres " + per.getSexo() + ".\n");
    }
}