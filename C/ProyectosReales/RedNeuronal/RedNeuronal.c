#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#define INPUT_NEURONS 2
#define HIDDEN_NEURONS 1
#define OUTPUT_NEURONS 1
 
int escalon_unitario(double x) {
    if (x >= 0) {
        return 1;
    } else {
        return 0;
    }
}
int compuerta_AND(double x1, double x2) {
    if (x1 == 1 && x2 == 1) {
        return 1;
    } else {
        return 0;
    }
}
int compuerta_OR(double x1, double x2) {
    if (x1 == 0 && x2 == 0) {
        return 0;
    } else {
        return 1;
    }
}
int compuerta_Not(double x) {
    if (x == 0 ) {
        return 1;
    } else {
        return 0;
    }
}
int compuerta_NAND(double x1, double x2) {
    // Se obtiene el resultado de la compuerta AND
    int resultado_AND = compuerta_AND(x1, x2);
    // Se niega el resultado de la compuerta AND
    return compuerta_Not(resultado_AND);
}
int compuerta_NOR(double x1, double x2) {
    // Se obtiene el resultado de la compuerta OR
    int resultado_OR = compuerta_OR(x1, x2);
    // Se niega el resultado de la compuerta OR
    return compuerta_Not(resultado_OR);
}
int compuerta_XOR(double x1, double x2) {
    // Se obtienen los resultados de la compuerta OR y la compuerta NAND
    int resultado_OR = compuerta_OR(x1, x2);
    int resultado_NAND = compuerta_NAND(x1, x2);
    // Se aplica la compuerta AND a los resultados anteriores
    return compuerta_AND(resultado_OR, resultado_NAND);
}
// Estructura de la red neuronal
typedef struct {
    double input[INPUT_NEURONS];
    double hidden[HIDDEN_NEURONS];
    double output[OUTPUT_NEURONS];
    double weight_ih[INPUT_NEURONS][HIDDEN_NEURONS];
    double weight_ho[HIDDEN_NEURONS][OUTPUT_NEURONS];
} NeuralNetwork;
 
// Inicializar la red neuronal con pesos aleatorios
void initialize(NeuralNetwork *network) {
    // Inicializar pesos entre -1 y 1
    for (int i = 0; i < INPUT_NEURONS; i++) {
        for (int j = 0; j < HIDDEN_NEURONS; j++) {
            network->weight_ih[i][j] = (double)rand() / RAND_MAX * 2 - 1;
        }
    }
 
    for (int i = 0; i < HIDDEN_NEURONS; i++) {
        for (int j = 0; j < OUTPUT_NEURONS; j++) {
            network->weight_ho[i][j] = (double)rand() / RAND_MAX * 2 - 1;
        }
    }
}
// Propagar la entrada hacia adelante a través de la red neuronal
void feedforward(NeuralNetwork *network) {
    // Calcular valores ocultos
    for (int i = 0; i < HIDDEN_NEURONS; i++) {
        double sum = 0.0;
        for (int j = 0; j < INPUT_NEURONS; j++) {
            sum += network->input[j] * network->weight_ih[j][i];
        }
        network->hidden[i] = escalon_unitario(sum);
    }
    // Calcular valores de salida
    for (int i = 0; i < OUTPUT_NEURONS; i++) {
        double sum = 0.0;
        for (int j = 0; j < HIDDEN_NEURONS; j++) {
            sum += network->hidden[j] * network->weight_ho[j][i];
        }
        network->output[i] = escalon_unitario(sum);
    }
}

int main() {
    NeuralNetwork network;
    // Inicializar la red neuronal
    initialize(&network);
    // Obtener los valores de entrada desde el teclado
    printf("Introduce los valores de entrada:\n");
    for (int i = 0; i < INPUT_NEURONS; i++) {
        printf("Entrada %d: ", i + 1);
        scanf("%lf", &network.input[i]);
    }
    // Propagar la entrada hacia adelante
    feedforward(&network);
    // Mostrar los resultados
    printf("\nValores de salida:\n");
    for (int i = 0; i < OUTPUT_NEURONS; i++) {
        printf("Salida %d: %d\n", i + 1, network.output[i]);
    }
    printf("\n Eliga una compuerta:\n");
    printf("\n 1-AND \n");
    printf("\n 2-OR \n");
    printf("\n 3-NOT \n");
    printf("\n 4-NAND \n");
    printf("\n 5-NOR \n");
    printf("\n 6-XOR \n");
    printf("\n 0- Para salir \n");
    int opcion;
    int s1;
    
    while (1){
        printf(" Elija la operacion que desea:\n");
        scanf("%d", &opcion);
        if (opcion == 0) {
            printf("Saliendo del Programa.\n");
            break;  
        }
       switch (opcion){
          case 1: s1 = compuerta_AND(network.input[0],network.input[1]);
          printf("Salida de la Compuerta AND: %d\n", s1);
          break;
          case 2:s1 = compuerta_OR(network.input[0],network.input[1]);
          printf("Salida de la Compuerta  OR: %d\n", s1);
          break;
          case 3:s1 = compuerta_Not(network.output[0]);
          printf("Salida  de la Compuerta NOT: %d\n", s1);
          break;
          case 4:compuerta_NAND(network.input[0],network.input[1]);
          printf("Salida de la Compuerta NAND: %d\n", s1);
          break;
          case 5:compuerta_NOR(network.input[0],network.input[1]);
          printf("Salida de la Compuerta  NOR: %d\n", s1);
          break;
          case 6:compuerta_XOR(network.input[0],network.input[1]);
          printf("Salida de la Compuerta XOR %d\n", s1);
          break;  
          default:printf("\n Opcion no existe\n");
          break;
       }
    }
    getchar();
    return 0;
}