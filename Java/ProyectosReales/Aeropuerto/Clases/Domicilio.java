package Clases;

public class Domicilio {
	//Atibutos del domicilio Viajero
	  private String Rua;
	  private int Numero;
	  private int Piso;
	  private char Puerta;
	  private int CodigoPostal;
	  private String Poblacion;
	  private String Provincia;
	  //Constructor
	  public Domicilio(String C,int N,int P,char Pu,int CP,String Po,String Pro) {
		  Rua = C;
		  Numero = N;
		  Piso = P;
		  Puerta = Pu;
		  CodigoPostal = CP;
		  Poblacion = Po;
		  Provincia = Pro;
	  }
	  // Getters & Setters
	  public String getRua() {
	    	return Rua;
	    }
	    public void setRua(String RuaNueva) {
	         Rua=RuaNueva;
	    }
	    public int getNumero() {
	    	return Numero;
	    }
	    public void setNumero(int NumeroNuevo) {
	    	Numero= NumeroNuevo;
	    }
	    public int getPiso() {
	    	return Piso;
	    }
	    public void setPiso(int PisoNuevo) {
	    	Piso= PisoNuevo;
	    }
	    public char getPuerta() {
	    	return Puerta;
	    }
	    public void setPuerta(char PuertaNueva) {
	    	Puerta= PuertaNueva;
	    }
	    public int getCodigo() {
	    	return CodigoPostal;
	    }
	    public void setCodigo(int CodigoNuevo) {
	    	CodigoPostal= CodigoNuevo;
	    }
	    public String getPoblacion() {
	    	return Poblacion;
	    }
	    public void setPoblacion(String PoblacionNueva) {
	    	Poblacion= PoblacionNueva;
	    }
	    public String getProvincia() {
	    	return Provincia;
	    }
	    public void setProvincia(String ProvincianNueva) {
	    	Provincia= ProvincianNueva;
	    }
	    // Metodos
	    @Override
		public String toString() {
			return ", Poblacion=" + Poblacion + ", Provincia=" + Provincia + "Rua=" + Rua + ", Numero=" + Numero + ", Piso=" + Piso + ", Puerta=" + Puerta
					+ ", CodigoPostal=" + CodigoPostal;
		}
}
