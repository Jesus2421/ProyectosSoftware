package sistemaexperto;
public class evaluadordeedad {
    String persona;
    public evaluadordeedad(int edad) {
        if(edad<35){
            persona="vista Joven";
        }
        else if((35<=edad)&&(edad<=40)){
            persona="pre presbicia";
        }
        else if(40<edad){
          persona="presbicia";  
        }
    }
    public String obtenerpersona(){
        return persona;
    }   
}
