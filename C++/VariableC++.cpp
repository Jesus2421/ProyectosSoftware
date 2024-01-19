// Vamos a ver los tipos de datos de C++
#include <iostream>
#include <string> 

int main() { 
    int edad = 25;
    float peso = 70.5;
    char letra = 'a';
    bool esMayorDeEdad = true;
    std::string palabra = "queso";

    // Mostrar los valores en la consola
    std::cout << "Edad: " << edad << std::endl;
    std::cout << "Peso: " << peso << std::endl;
    std::cout << "Letra: " << letra << std::endl;
    std::cout << "¿Es mayor de edad? " << std::boolalpha << esMayorDeEdad << std::endl;
    std::cout << "Palabra: " << palabra << std::endl;
    // tipos de arreglos
    int vector[]={1,2,3,4,5};
      char matriz[][4] = {
        {'a', 'b', 'c', 'd'},
        {'e', 'f', 'g', 'h'},
        {'i', 'j', 'k', 'l'}
    };
     // Mostrar el arreglo de enteros
    std::cout << "Vector: ";
    for (int i = 0; i <= sizeof(vector) / sizeof(vector[0]); ++i) {
        std::cout << vector[i] << " ";
    }
    std::cout << std::endl;

    // Mostrar la matriz de caracteres
    std::cout << "Matriz:" << std::endl;
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 4; ++j) {
            std::cout << matriz[i][j] << " ";
        }
        std::cout << std::endl;
    }

    return 0; 
}
