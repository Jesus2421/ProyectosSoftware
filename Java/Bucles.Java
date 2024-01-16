// Vamos Hccer un programa en JAVA sencillo que pueda hacer ciclos while como for
// para mostrar los numeros del 1 al 20.
public class Bucles {
    public static void main(String[] args) {
        int i = 1;
        System.out.println("Ciclo While");
        while (i <= 20){
            System.out.print(i + " ");
            i++;
        }
        System.out.println("\n\nCiclo For");
        for (int j=1;j<=20;j++){
            System.out.print(j + " ");
        }
    }
}