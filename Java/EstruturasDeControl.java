// Ya vimos un tipo de estucturas de control que son bucles 
// ahora vamos a ver las las estururas condicionales
/* Las estructuras condionales se utilizan para realizar decisiones en el flujo del programa*/
public class EstruturasDeControl {
    public static void main(String[] args) {
        int edad = 17;
        /* Estructura Condicional If */
        if (edad >= 18){
            System.out.println("Eres mayor de edad");
            } else{
                System.out.println("Eres menor de edad");
             }
                /* Estructura Else If o Else If */
                /* Si la primera condición es falsa, entonces mira si la siguiente es verdadera*/
                if (edad == 18){
                    System.out.println("Eres de legal para votar");
                    }else if (edad > 18 && edad <=25 ){
                        System.out.println("Eres miembro activo de la fuerza laboral");
                    }
                /* Estructura Switch Case */
                String colorFavorito = "azul";
                switch (colorFavorito) {
                    case "rojo":System.out.println("Tu color favorito es rojo");
                    break;
                    case "verde":System.out.println("Tu color favorito es verde");
                    break;
                    default:System.out.println("Tu color favorito no es azul ni rojo ni el verde");
                }
        }           
}
