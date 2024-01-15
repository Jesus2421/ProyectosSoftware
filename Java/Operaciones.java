import java.text.DecimalFormat;

public class Operaciones {
    int a = 10;
    int b = 5;
     // Suma
     int suma = a + b; 
     // Resta
     int resta = a - b; 
     // Multiplicación
     int multiplicacion = a * b; 
     // División
     int division = a / b; 
     // Módulo
     int modulo = a % b; 
     /*
       cuando queremos operar un mismo numero;
        int a = 10;
        Suma
        a += 5; // a = 15
        Resta
        a -= 5; // a = 10
        Multiplicación
        a *= 5; // a = 50
        División
        a /= 5; // a = 10
       Módulo
       a %= 5; // a = 0             
      */
      // Podemos perar un entero con un decimal
         int x = 10;
         float y = (float)  5.5;//  estamos conviertiento un Double a Float
         float sumadecimales =  a + b; 
    // posibles errores 
    //int z = "Hola"; no se puede asignar una cadena de text
    //int w = 'A'; tampoco se pueden asignar caracteres simbol
    //float pi = 3.1416; es posible, pero en java el tipo double es mas preciso que float
    // boolean a = true;
    //boolean b = false;
    // int suma = a + b; // Error: tipos incompatibles
    //char a = 'a';
    //char b = 'b';
    // int suma = a + b; // Error: tipos incompatibles
    //int x1 = 10;
    //Integer x2 = null;
    //int nulo = x1 + x2; // resultado nulo 
    boolean a1 = true;
    boolean b1 = false;
    boolean sumabinaria = a1 && b1; // Compuerta AND
    boolean sumabinaria1 = a1 || b1; // Compuerta OR
     void mostrarSuma() {
        System.out.println("La suma de " + a + " y " + b);
        System.out.println(suma);
        }
        void mostrarResta() {
            System.out.println("La resta de " + a + " entre " + b);
            System.out.println(resta);
            }
        void mostrarMultiplicacion(){
            System.out.println("La multiplicación de "+ a +" por "+b);
            System.out.println(multiplicacion);
            }
            void mostrarDivion(){
                if (b==0)System.out.println("No se puede dividir entre c");
                else{
                    System.out.println("La división de "+ a +" entre "+b);
                    System.out.println(division);}
            }
            void mostrarModulo(){
                System.out.println("El módulo de "+ a +" entre "+ b);
                System.out.println(modulo);
            }
            void mostrasumadecimales(){
                DecimalFormat df = new DecimalFormat("#.##");
                System.out.printf("La suma de " + a + " y " + b + " es " + df.format(sumadecimales));
            }
            void mostrarsumabinaria(){
                System.out.println("\n La suma binaria=");
                System.out.println(sumabinaria);
                System.out.println(sumabinaria1);
            }
            public static void main (String[] args) {
                Operaciones operaciones = new Operaciones();
                operaciones.mostrarSuma();
                operaciones.mostrarResta();
                operaciones.mostrarMultiplicacion();
                operaciones.mostrarDivion();
                operaciones.mostrarModulo();
                operaciones.mostrasumadecimales();
                operaciones.mostrarsumabinaria();
            }
}
