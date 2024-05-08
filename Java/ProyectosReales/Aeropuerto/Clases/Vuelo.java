package Clases;

import java.time.*;
import java.util.ArrayList;

public class Vuelo {
	 //Atibutos del Vuelos
	private LocalDate FechaSalida;
	private LocalTime HoraSalidaLocal;
	private String codigoVuelo;
	private String Compañía;
	private String PaísSalida;
	private String AeropuertoSalida;
	private String terminalSalida;
	private String paisLlegada;
	private String aeropuertoLlegada;
	private LocalDate fechaLlegadaPrevista;
	private LocalTime horaLlegadaPrevista;
	private ArrayList<Viajero> pasajeros;
	 //Constructor
	public Vuelo(LocalDate fechaSalida, LocalTime horaSalidaLocal, String codigoVuelo, String compañía,
			String paísSalida, String aeropuertoSalida, String terminalSalida, String paisLlegada,
			String aeropuertoLlegada, LocalDate fechaLlegadaPrevista, LocalTime horaLlegadaPrevista) {
		super();
		FechaSalida = fechaSalida;
		HoraSalidaLocal = horaSalidaLocal;
		this.codigoVuelo = codigoVuelo;
		Compañía = compañía;
		PaísSalida = paísSalida;
		AeropuertoSalida = aeropuertoSalida;
		this.terminalSalida = terminalSalida;
		this.paisLlegada = paisLlegada;
		this.aeropuertoLlegada = aeropuertoLlegada;
		this.fechaLlegadaPrevista = fechaLlegadaPrevista;
		this.horaLlegadaPrevista = horaLlegadaPrevista;
	}
	// Getters & Setters
	public LocalDate getFechaSalida() {
		return FechaSalida;
	}
	public void setFechaSalida(LocalDate fechaSalida) {
		FechaSalida = fechaSalida;
	}
	public LocalTime getHoraSalidaLocal() {
		return HoraSalidaLocal;
	}
	public void setHoraSalidaLocal(LocalTime horaSalidaLocal) {
		HoraSalidaLocal = horaSalidaLocal;
	}
	public String getCodigoVuelo() {
		return codigoVuelo;
	}
	public void setCodigoVuelo(String codigoVuelo) {
		this.codigoVuelo = codigoVuelo;
	}
	public String getCompañía() {
		return Compañía;
	}
	public void setCompañía(String compañía) {
		Compañía = compañía;
	}
	public String getPaísSalida() {
		return PaísSalida;
	}
	public void setPaísSalida(String paísSalida) {
		PaísSalida = paísSalida;
	}
	public String getAeropuertoSalida() {
		return AeropuertoSalida;
	}
	public void setAeropuertoSalida(String aeropuertoSalida) {
		AeropuertoSalida = aeropuertoSalida;
	}
	public String getTerminalSalida() {
		return terminalSalida;
	}
	public void setTerminalSalida(String terminalSalida) {
		this.terminalSalida = terminalSalida;
	}
	public String getPaisLlegada() {
		return paisLlegada;
	}
	public void setPaisLlegada(String paisLlegada) {
		this.paisLlegada = paisLlegada;
	}
	public String getAeropuertoLlegada() {
		return aeropuertoLlegada;
	}
	public void setAeropuertoLlegada(String aeropuertoLlegada) {
		this.aeropuertoLlegada = aeropuertoLlegada;
	}
	public LocalDate getFechaLlegadaPrevista() {
		return fechaLlegadaPrevista;
	}
	public void setFechaLlegadaPrevista(LocalDate fechaLlegadaPrevista) {
		this.fechaLlegadaPrevista = fechaLlegadaPrevista;
	}
	public LocalTime getHoraLlegadaPrevista() {
		return horaLlegadaPrevista;
	}
	public void setHoraLlegadaPrevista(LocalTime horaLlegadaPrevista) {
		this.horaLlegadaPrevista = horaLlegadaPrevista;
	}
	public ArrayList<Viajero> getPasajeros() {
		return pasajeros;
	}
	public void setPasajeros(ArrayList<Viajero> pasajeros) {
		this.pasajeros = pasajeros;
	}
	 // Metodos
	@Override
	public String toString() {
		return "Fecha Salida:" + FechaSalida + ", HoraSalidaLocal:" + HoraSalidaLocal + ", codigoVuelo:"
				+ codigoVuelo + ", Compañía:" + Compañía + ", PaísSalida:" + PaísSalida + ", AeropuertoSalida:"
				+ AeropuertoSalida + ", terminalSalida=" + terminalSalida + ", paisLlegada=" + paisLlegada
				+ ", aeropuertoLlegada:" + aeropuertoLlegada + ", fechaLlegadaPrevista:" + fechaLlegadaPrevista
				+ ", horaLlegadaPrevista:" + horaLlegadaPrevista + ", pasajeros:" + pasajeros;
	}
	public void addContenido(Viajero viajero) {
		 if (!pasajeros.contains(viajero)) {
			 pasajeros.add(viajero);
		    }else {
		        System.out.println("El pasajero ya esta registrado en ese vuelo");
		    }
	}
	public void remuveContenido(Viajero viajero) {
		 if (pasajeros.contains(viajero)) {
			 pasajeros.remove(viajero);
		    }else {
		        System.out.println("El pasajero no  esta registrado en ese vuelo");
		    }
	}

	public Viajero getContenido(int index) {
		return pasajeros.get(index);
	}

	public int size() {
		return pasajeros.size();
	}

	public void displayWords() {
		for (int i = 0; i < pasajeros.size(); i++) {
            System.out.println(" Pasajeros: " + (i+1) + ": " +getContenido(i));
        }
	}

	public void displayWordsInSameLine() {
		String separator = "";
		  System.out.print("Pasajeros del Avion:\n");
	        for (Viajero viajero : pasajeros) {
	            System.out.print(this.toString()+" "+viajero.toString()+separator);
	            separator = "\n";
	        }
	}
}
