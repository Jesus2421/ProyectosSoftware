package Clases;
// Autor: Ing. Jesus Miguel Campos Correia
//Clase base para el prototipo de Scanner
public abstract class ScannerPrototype implements Cloneable  {

	 // Método abstracto para leer entrada
    public abstract Object readInput();
    
    // Método para clonar el prototipo
    public ScannerPrototype clone() {
        try {
            return (ScannerPrototype) super.clone();
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }
}
