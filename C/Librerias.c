// Liberias de lenguaje c 
#include <stdio.h> //Esta librería proporciona funciones estándar de entrada y salida
#include <time.h>
//Se utiliza para realizar la función printf, que permite mostrar mensajes.
/*
* En C y C++, el sufijo ".h" en los nombres de archivo de encabezado (header files) 
* se utiliza para indicar que se trata de un archivo de cabecera (header file). 
* Estos archivos suelen contener declaraciones de funciones, macros, constantes y 
* otras declaraciones que se utilizan en varios archivos fuente del programa.
*/
// tambien podemos incluir una libreria con ""
#include "string.h" //Proporciona funciones para gestión de memoria dinámica.
int main() {
    printf("Hola, gente!\n");
    int numero;
    printf("Ingrese un número: ");
    scanf("%d", &numero);
    printf("Usted ingresó: %d\n", numero);
    srand(time(NULL));
    // Generar y mostrar tres números aleatorios entre 1 y 10
    for (int i = 0; i < 3; ++i) {
        int numeroAleatorio = rand() % 10 + 1;
        printf("Número aleatorio %d: %d\n", i + 1, numeroAleatorio);
    }
    return 0;
}