package Principal;
import Clases.*;
public class Principal {

	public static void main(String[] args) {
		// Crear un prototipo de Scanner para introducir datos de un cliente y su domicilio
		ViajeroScannerPrototype clientPrototype = new ViajeroScannerPrototype();
		VueloScannerPrototype vueloPrototype = new VueloScannerPrototype();
		 // Ingresar datos de un viajero y un vuelo
		System.out.println("Dame los datos del Vuelo");
	    Vuelo vuelo = IngresarVuelo(vueloPrototype);
	    System.out.println("Dame los datos del Pasajero");
	    Viajero viajero = Ingresarviajero(clientPrototype,vuelo);
	    vuelo.addContenido(viajero);
	    System.out.println("Billete");
	    viajero.displayWordsInSameLine();
	    System.out.println("Lista pasajeros");
	    vuelo.displayWordsInSameLine();
	}

	private static Vuelo IngresarVuelo(VueloScannerPrototype vueloPrototype) {
		ScannerPrototype clonedScanner2 = vueloPrototype.clone();
        if (clonedScanner2 != null) {
            Object clientData = clonedScanner2.readInput();
            if (clientData != null && clientData instanceof Vuelo) {
                // Si se introdujeron datos válidos del cliente y su domicilio, mostrar la información
            	Vuelo vuelo = (Vuelo) clientData;
                System.out.println("Datos del vuelo:");
                System.out.println(vuelo.toString());
                return vuelo;
            } else {
                System.out.println("Error al introducir datos del vuelo.");
            }
        } else {
            System.out.println("Error al clonar el prototipo de Scanner.");
        }
		return null;
        
	}

	private static Viajero Ingresarviajero(ViajeroScannerPrototype clientPrototype, Vuelo vuelo) {
		// Clonar el prototipo y usarlo para introducir datos del viajero y su domicilio
        ScannerPrototype clonedScanner = clientPrototype.clone();
        if (clonedScanner != null) {
            Object clientData = clonedScanner.readInput();
            if (clientData != null && clientData instanceof Viajero) {
                // Si se introdujeron datos válidos del cliente y su domicilio, mostrar la información
            	 Viajero cliente = (Viajero) clientData;
                System.out.println("Datos del viajero:");
                System.out.println(cliente.toString());
                cliente.addContenido(vuelo);
                return cliente;
            } else {
                System.out.println("Error al introducir datos del cliente y su domicilio.");
            }
        } else {
            System.out.println("Error al clonar el prototipo de Scanner.");
            return null;
        }
		return null;
	}

}
