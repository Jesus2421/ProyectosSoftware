//Continuando con las estucturas de control en C 
// Toca ver las estuctura condicionales
#include <stdio.h>
int main() {
    int edad;
    printf("Ingrese su edad: ");
    scanf("%d", &edad);
    // condicional if else
    if (edad >= 18) {
        printf("\nUsted es mayor de edad");
    } else {
        printf("\nUsted es menor de edad");
    }
    // -switch case
    // En este caso vamos a ver el switch case
    char sexo;
    printf("\nIngrese s para masculino o m para femenino: ");
    scanf(" %c", &sexo);
    switch (sexo) {
        case 'm':
        case 'M':
            printf("\nEs hombre");
            break;
        case 'f':
        case 'F':
            printf("\n Es mujer");
            break;
        default:
            printf("\n Opción no válida");
            break;
    }
    return 0;
}