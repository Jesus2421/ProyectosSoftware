package Clases;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;

public class ViajeroScannerPrototype extends ScannerPrototype {
	 Scanner scanner;
	public ViajeroScannerPrototype() {
	   scanner = new Scanner(System.in);
	}
	 @Override
	public Object readInput() {
		 System.out.println("Ingrese el nombre del Viajero:");
	        String name = scanner.nextLine();
	        System.out.println("Ingrese el apellidos del Viajero:");
	        String apellidos = scanner.nextLine();
	        System.out.println("Ingrese la fecha de nacimiento (formato dd/mm/aaaa):");
	        String fechaNacimientoStr = scanner.nextLine();
	     // Definir el formato de fecha esperado
	        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	        LocalDate fechaNacimiento = null;
	        try {
	            // Parsear el String a un objeto LocalDate utilizando el formato especificado
	            fechaNacimiento = LocalDate.parse(fechaNacimientoStr, formatter);
	        } catch (java.time.format.DateTimeParseException e) {
	            System.out.println("Formato de fecha de nacimiento inválido. Ingrese la fecha en el formato dd/mm/aaaa.");
	        }
	        System.out.println("Ingrese la nacionalidad del Viajero:");
	        String nacionalidad = scanner.nextLine();
	        System.out.println("Ingrese el numero de pasaporte del Viajero:");
	        String npasaporte = scanner.nextLine();
	        System.out.println("Ingrese el peso en Kg de la maleta del Viajero:");
	        Double peso= scanner.nextDouble();
	        // Introducir datos para el domicilio del cliente
	        scanner.nextLine();
	        System.out.println("Ingrese la calle del domicilio:");
	        String street = scanner.nextLine();
	        System.out.println("Ingrese el número del domicilio:");
	        int number = scanner.nextInt();
	        scanner.nextLine(); // Consumir la nueva línea después del entero
	        System.out.println("Ingrese el piso del domicilio:");
	        int floor = scanner.nextInt();
	        scanner.nextLine(); // Consumir la nueva línea después del entero
	        System.out.println("Ingrese la puerta del domicilio:");
	        char door = scanner.next().charAt(0);
	        scanner.nextLine(); // Consumir la nueva línea después del carácter
	        System.out.println("Ingrese el código postal del domicilio:");
	        int postalCode = scanner.nextInt();
	        scanner.nextLine(); // Consumir la nueva línea después del entero
	        System.out.println("Ingrese la población del domicilio:");
	        String city = scanner.nextLine();
	        System.out.println("Ingrese la provincia del domicilio:");
	        String province = scanner.nextLine();

			// Crear y retornar un objeto Cliente con los datos introducidos
	        Viajero client = new Viajero(name,apellidos,fechaNacimiento,nacionalidad,npasaporte,peso);
	        client.setDomicilio(new Domicilio(street, number, floor, door, postalCode, city, province));
             
	        // Crear y retornar un objeto Cliente con los datos introducidos
	        return client;
	    }
	 
}
	


