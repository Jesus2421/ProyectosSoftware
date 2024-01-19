// veamos como hacer ciclos for y while en c++
#include <iostream>
 int main(){
    // ciclo for para una sumatoria
    double sumatoria=0;
    for(int i = 1 ; i <=5 ;i++){
        sumatoria+=i;
    }

//imprimimos la sumatoria por pantalla
std::cout << "La suma de los numeros del 1 al 5 es: " << sumatoria << std::endl;

// ciclo while para una sumatoria

    double num = 1, contador = 6;
    double sumatoria1 = 0;  
    while (num <= contador) {
        sumatoria1 += num;
        num++;
    }

    // Mostrar el resultado en la consola
    std::cout << "La sumatoria 1 es: " << sumatoria1 << std::endl;

    // ciclo Do-while para una sumatoria
    double num1 = 1, contador1 = 6;
    double sumatoria2 = 0;
    do {
        sumatoria2 += num1;
        num1++;
    } while (num1 <= contador1);

    // Mostrar el resultado en la consola
    std::cout << "La sumatoria 2 es: " << sumatoria2 << std::endl;

    return 0;
 }