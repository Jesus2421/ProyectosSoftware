package sistemaexperto;

 public class FuzzyEdadMiopia {
    int Edad;
    String prebicia;
    FuzzyEdadMiopia(int e) {
       Edad=e;
       if (Edad>=50){
           prebicia="si";
       }else if (Edad<=50){
           prebicia="no";
       }
    }
    public String obtenerpresbicia (){
        return prebicia;
    }
}
