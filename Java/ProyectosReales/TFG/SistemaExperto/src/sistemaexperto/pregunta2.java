package sistemaexperto;
import javax.swing.JOptionPane;
public class pregunta2 {
    int respuesta;
    public pregunta2() {
        pre2();
    }
    public void pre2() {
        Object[] options = { "Normal", "Reducida" };
        respuesta=JOptionPane.showOptionDialog(null,"¿Como es su produccion de lagrimas?","pregunta 2", JOptionPane.DEFAULT_OPTION, JOptionPane.INFORMATION_MESSAGE,null, options, options[0]);
    } 
    public int respuesta() {
        return respuesta;
    }
}