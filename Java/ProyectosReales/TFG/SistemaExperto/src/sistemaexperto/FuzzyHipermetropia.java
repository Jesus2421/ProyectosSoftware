
package sistemaexperto;
public class FuzzyHipermetropia {
    int Edad;
    String prebicia;
    public FuzzyHipermetropia(int e) {
       Edad=e;
       if (Edad>=40){
           prebicia="si";
       }else if (Edad<=40){
           prebicia="no";
       }
    }
    public String obtenerpresbicia (){
        return prebicia;
    }
}
