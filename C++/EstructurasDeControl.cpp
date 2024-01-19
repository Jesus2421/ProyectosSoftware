// vamos hacer condicionales
// para que el usuario pueda elegir la cantidad de personas a las que se les
// va a dar como regalo un juguito.
#include <cstdio>
#include <iostream>
int main(){
    int edad;
    // Mostrar mensaje en consola usando printf
    printf("Cual es tu edad? ");
    // Leer entrada desde el usuario usando scanf
    scanf("%d", &edad);
    // Mostrar la edad ingresada usando printf
    printf("Tu edad es: %d\n", edad);
    if (edad >= 18){
        printf("Eres mayor de edad, te damos un videojuego.\n");
    }else{
        printf("Eres menor de edad, te toca el 50 porcientos de descuento.\n");
    }
    // condicional switch
    switch(edad) {
        case 13: 
        printf("Feliz cumpleaños!\n");
        break;
        case 21:
        printf("¡Que año tan feliz! \n");
        default:
        printf("No hay nada especial por hoy.\n");
    };
  // Operador ternario (condición ? expresión1 : expresión2):
  int numero=20;
  std::cout << (numero > 0 ? "Positivo" : "No positivo") << std::endl;
}