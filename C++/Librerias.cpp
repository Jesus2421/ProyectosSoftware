// Inclusion y uso de librerias
#include <iostream> // Librería para entrada y salida estándar en C++
#include <cmath> //librería proporciona funciones matemáticas , 
//como raíces cuadradas, exponenciación, funciones trigonométricas, etc.
#include <string> //Para manejar cadenas de caracteres.
#include <vector>//Para trabajar con arrays dinámicos.
#include <algorithm>//Ofrece algoritmos predefinidos como sort, find, etc.
#include <fstream>// Para operaciones de entrada/salida con archivos.
#include <ctime>// Proporciona funciones relacionadas con el tiempo.
#include <cstdlib>// Contiene funciones útiles como rand() para generar números aleatorios.
#include <iomanip>// Para manipulación de formato de salida.
#include <sstream>//Para realizar operaciones de entrada/salida sobre cadenas de caracteres (std::stringstream).
// Declaracion e inicializacion de variables globales
int contador = 0;
char opcion[2];
float num1, num2;

// Prototipo de funciones
void realizarOperacion();

// Funcion principal del programa
int main() {
    // Llamada a la función que realiza operaciones
    realizarOperacion();

    // Código adicional si es necesario

    return 0; // Indica que el programa se ejecutó correctamente
}

// Definición de la función para realizar operaciones
void realizarOperacion() {
    // Código de la función

    // Ejemplo de uso de la librería iostream
    std::cout << "Ingrese el primer numero: ";
    std::cin >> num1;

    std::cout << "Ingrese el segundo numero: ";
    std::cin >> num2;

    float resultado = num1 + num2;

    std::cout << "La suma de los numeros es: " << resultado << std::endl;

    // Código adicional de operaciones

    // Incremento del contador global
    contador++;

    // Ejemplo de uso de la variable global 'contador'
    std::cout << "El contador ahora es: " << contador << std::endl;
}

