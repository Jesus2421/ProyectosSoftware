// tipos de datos en C
#include <stdio.h>
int main() {
    int edad = 25;       /* Declarar una variable entera */
    long int NumeroGrande = 9876543210L; //variable entrera grande
    float altura = 1.70; // Declarar una variable real
    double peso = 84.5;   // Declarar una variable doble
    char letra = 'a';   /* Declarar una variable carácter */
   char nombre[30] = "Juan";// Cadena de caracteres
    printf("La edad es: %d\n", edad);
    printf("El numero grande es: %ld \n",NumeroGrande);
    printf("La altura es: %.2f\n", altura);
    printf("El peso es: %.2f\n", peso);
    printf("La letra es: %c\n", letra);
    printf("El nombre completo es: %s\n",nombre);
}