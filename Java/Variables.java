public class Variables {
    // Tipo de variables en Java
    int edad;                  // Variable entera
    float altura;              // Variable real
    double peso;               // Variable doble precisión
    String nombre = "Juan";   // Variable de cadena con valor predet
    char letra = 'A';         // Variable carácter
    boolean esMayorDeEdad = true; // Variable booleana
    // Prefecto ya tenemos nuestra Variables vamos a usarlas
    void imprimirVariables() {
        System.out.println("Nombre: "+nombre);
        System.out.println("Edad: "+edad);
        System.out.println("Altura: "+altura);
        System.out.println("Peso: "+peso+" Kg");
        System.out.println("Letra: "+letra);
        if(esMayorDeEdad){
            System.out.println("Es mayor de edad.");
            }else{
                System.out.println("No es mayor de edad.");
            }
        }
     // Arregos unidimencionales y multidimencionales
     int[] Vector;   // Arregos unidimencionales 
     int[][] Matriz;//Arreglo Multidimensional
     // Métodos para trabajar con los arreglos
     //Mostrar vector
     void mostrarVector(){
        for (int i=0;i<Vector.length;i++) {
            System.out.print(Vector[i]+" ");
            }
            System.out.println();
        }
    // Mostrar Mastriz
    void mostrarMatriz(){
        for (int i=0;i<Matriz.length;i++){
            for (int j=0;j<Matriz[i].length;j++ ){
                Matriz[i][j]=1+(i+j)*5;
                System.out.print(Matriz[i][j]+"\t");
                }System.out.println();
            }
        }         
        //Método Main
        public static void main(String[] args) {
            Variables var = new Variables();
            var.imprimirVariables();
            /* Inicializando el vector */
            var.Vector=new int[5];
            for (int i = 0; i < 5; i++) {
                var.Vector[i]=i+1;
            }
            System.out.println("\nContenido del vector:\n");
            var.mostrarVector();
            /*Inicializando la matriz*/
            var.Matriz=new int [3][2];
            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 2; j++ ) {
                    var.Matriz[i][j]=(i+1)+(j+1
                    );/*Suma de las posiciones en cada fila*/
                    }
                    }
                    System.out.println("\n\nContenido de la matriz:\n");
                    for (int i = 0; i < 3; i++) {
                        System.out.println("Fila "+(i+1));
                        var.mostrarMatriz();
                    }
                                            
        }

    }
