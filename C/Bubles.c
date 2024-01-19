//Los bucles son estrutiras de control muy utiles
//para repetir una tarea varias veces. Hay dos tipos de bucles:
// Vamos hacer arreglos con estos bucles
#include <stdio.h>

int main() {
    int numeros[5] = {1,2,3,4,5};
    // declatamos tambien un arreglo multidimencional
    int matriz[3][4]= {{1, 2, 3, 4},{5,6,7,8},{9,10,11,12}};
    printf("Imprimiendo el arreglo numeros:\n");
    // Para imprimir los elementos del arreglo se usa un for normal
   for (int i=0;i<5;i++) {
    printf("%d ",numeros[i]);
   }
   printf("\n\n");
   printf("Imprimiendo la matriz:\n");

   for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 4; j++) {
            printf("%d ", matriz[i][j]);
        }
        printf("\n");
    }
    // Ya sabemos como hacer un ciclo for 
    // pero ahora vamos a ver como hacer uno while
    // mientras que en este caso es mas complicado porque no tenemos una condicion para
    // detenernos, por lo tanto debemos tener una variable que aumente y que sea
    // menor al limite para poder salir del bucle
    int contador = 0;
    printf("Este es un bucle while.\n");
    printf("Voy a mostrar los numeros del arreglo numeros hasta llegar al final \n");
    while(contador < 5) {
        printf("%d ", numeros[contador]);
        contador++;
    }

    return 0;
}