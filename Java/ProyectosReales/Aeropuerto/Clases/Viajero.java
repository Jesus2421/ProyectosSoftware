package Clases;

import java.time.LocalDate;
import java.util.ArrayList;

public class Viajero {
  //Atibutos del Viajero
	private String nombre;
	private String apellidos;
	private LocalDate FecheNacimiento;
	private String Nacionalidad;
	private String Npasaporte;
	private Domicilio domicilio;
	private double PesoMaxMaleta;
	private ArrayList<Vuelo> billetes;
 //Constructor
	public Viajero(String nombre, String apellidos, LocalDate fecheNacimiento, String nacionalidad, String npasaporte, double pesoMaxMaleta) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.FecheNacimiento = fecheNacimiento;
		this.Nacionalidad = nacionalidad;
		this.Npasaporte = npasaporte;
		this.PesoMaxMaleta = pesoMaxMaleta;
	}
 // Getters & Setters 
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public LocalDate getFecheNacimiento() {
		return FecheNacimiento;
	}
	public void setFecheNacimiento(LocalDate fecheNacimiento) {
		FecheNacimiento = fecheNacimiento;
	}
	public String getNacionalidad() {
		return Nacionalidad;
	}
	public void setNacionalidad(String nacionalidad) {
		Nacionalidad = nacionalidad;
	}
	public String getNpasaporte() {
		return Npasaporte;
	}
	public void setNpasaporte(String npasaporte) {
		Npasaporte = npasaporte;
	}
	public Domicilio getDomicilio() {
		return domicilio;
	}
	public void setDomicilio(Domicilio domicilio) {
		this.domicilio = domicilio;
	}
	public double getPesoMaxMaleta() {
		return PesoMaxMaleta;
	}
	public void setPesoMaxMaleta(double pesoMaxMaleta) {
		PesoMaxMaleta = pesoMaxMaleta;
	}
	public ArrayList<Vuelo> getBilletes() {
		return billetes;
	}
	public void setBilletes(ArrayList<Vuelo> billetes) {
		this.billetes = billetes;
	}
 // Metodos
	@Override
	public String toString() {
		return "\nnombre completo:" + nombre + " " + apellidos + ", Nacionalidad:" + Nacionalidad 
				+ ", Npasaporte:" + Npasaporte + ", domicilio:" + domicilio+ ", PesoMaxMaleta:" + PesoMaxMaleta;
	}

	
	public void addContenido(Vuelo vuelo) {
		   if (!billetes.contains(vuelo)) {
		        billetes.add(vuelo);
		    }else {
		        System.out.println("El pasajero ya esta registrado en ese vuelo");
		    }
	}
	public void remuveContenido(Vuelo vuelo) {
		if (billetes.contains(vuelo)) {
	        billetes.remove(vuelo);
	    } else {
	        System.out.println("El pasajero no esta registrado en nigun vuelo");
	    }
	}

	public Vuelo getContenido(int index) {
		return billetes.get(index);
	}

	public int size() {
		return billetes.size();
	}

	public void displayWords() {
		for (int i = 0; i < billetes.size(); i++) {
            System.out.println(" billetes: " + (i+1) + ": " +getContenido(i));
        }
	}

	public void displayWordsInSameLine() {
		String separator = "";
		  System.out.print("Billete de Avion:\n");
	        for (Vuelo vuelo : billetes) {
	            System.out.print(this.toString()+" "+vuelo.toString()+separator);
	            separator = "\n";
	        }
	}

}
