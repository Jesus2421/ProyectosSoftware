import java.util.Scanner;

public class DatosporTeclado{

  public static void main (String[] args){
    try{
      Scanner lectura = new Scanner (System.in);
      System.out.println("Ingrese su nombre: ");
      String nombre = lectura.next();
      System.out.println("Ingrese su edad: ");
      int edad = lectura.nextInt();
      System.out.println("Su nombre es: " + nombre + " y su edad es: " + edad);
    }catch(Exception e){
      System.out.println(" Ha fallado la creacion del scanner");
      System.out.println(e.getMessage);
    }
    
  }//cierra método main

}//cierra class