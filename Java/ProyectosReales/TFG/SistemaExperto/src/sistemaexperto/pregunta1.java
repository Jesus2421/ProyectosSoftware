package sistemaexperto;
import javax.swing.JOptionPane;

public class pregunta1 {
    int respuesta;
    public pregunta1() {
        pre1();
    }
    public void pre1() {
        Object[] options = { "Miopia", "Hipermetropia" };
        respuesta=JOptionPane.showOptionDialog(null,"¿Que anomalia de la vision presenta?","pregunta 1", JOptionPane.DEFAULT_OPTION, JOptionPane.INFORMATION_MESSAGE,null, options, options[0]);
    } 
    public int respuesta() {
        return respuesta;
    }
}
