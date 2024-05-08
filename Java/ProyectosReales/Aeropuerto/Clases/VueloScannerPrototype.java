package Clases;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;

public class VueloScannerPrototype extends ScannerPrototype {
	 Scanner scanner;
	public VueloScannerPrototype() {
		 scanner = new Scanner(System.in);
	}

	@Override
	public Object readInput() {
		System.out.println("Ingrese la fecha de salida (formato dd/mm/aaaa):");
        String fechaSStr = scanner.nextLine();
        // Definir el formato de fecha esperado
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDate fechaSalida= null;
        try {
            // Parsear el String a un objeto LocalDate utilizando el formato especificado
        	fechaSalida = LocalDate.parse(fechaSStr, formatter);
        } catch (java.time.format.DateTimeParseException e) {
            System.out.println("Formato de fecha de nacimiento inválido. Ingrese la fecha en el formato dd/mm/aaaa.");
        }
        LocalTime currentTime = LocalTime.now();
		System.out.println("Ingrese el codigo del vuelo:");
        String codigoVuelo = scanner.nextLine();
        System.out.println("Ingrese compañia de vuelo:");
        String compañía = scanner.nextLine();
        System.out.println("Ingrese el pais de salida:");
        String paísSalida = scanner.nextLine();
        System.out.println("Ingrese el aeropuerto de salida:");
        String aeropuertoSalida= scanner.nextLine();
        System.out.println("Ingrese el terminal de salida:");
        String terminalSalida= scanner.next();
        System.out.println("Ingrese el pais llegada:");
        String paisLlegada = scanner.nextLine();
        scanner.nextLine();
        System.out.println("Ingrese el aeropuerto de llegada:");
        String aeropuertoLlegada = scanner.next();
        System.out.println("Ingrese la fecha de llegada (formato dd/mm/aaaa):");
        String fechaLlStr = scanner.next();
        LocalDate fechaLlegadaPrevista= null;
        try {
            // Parsear el String a un objeto LocalDate utilizando el formato especificado
        	fechaLlegadaPrevista = LocalDate.parse(fechaLlStr, formatter);
        } catch (java.time.format.DateTimeParseException e) {
            System.out.println("Formato de fecha es inválida. Ingrese la fecha en el formato dd/mm/aaaa.");
        }
        System.out.println("Ingrese la hora de llegada (HH:mm:ss): ");
        String horaLlegadaStr = scanner.next();
    	DateTimeFormatter formatterh = DateTimeFormatter.ofPattern("HH:mm:ss");
    	LocalTime horaLlegadaPrevista=null;
        try {
        	horaLlegadaPrevista = LocalTime.parse(horaLlegadaStr, formatterh);
        } catch (java.time.format.DateTimeParseException e) {
            System.out.println("Formato de hora es inválida. Ingrese la hora en el formato (HH:mm:ss).");
        }

		// Crear y retornar un objeto Cliente con los datos introducidos
        Vuelo vuelo = new Vuelo(fechaSalida, currentTime,codigoVuelo,compañía,paísSalida, aeropuertoSalida,terminalSalida,paisLlegada,
    			aeropuertoLlegada, fechaLlegadaPrevista,horaLlegadaPrevista);
         
        // Crear y retornar un objeto Cliente con los datos introducidos
        return vuelo;
	}

}
