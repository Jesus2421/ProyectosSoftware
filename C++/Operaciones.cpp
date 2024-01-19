#include <iostream>
#include <cmath>

int main() {
    int a = 5, b = 3;

    // Suma
    int suma = a + b;
    std::cout << "Suma: " << suma << std::endl;

    // Resta
    int resta = a - b;
    std::cout << "Resta: " << resta << std::endl;

    // Multiplicación
    int multiplicacion = a * b;
    std::cout << "Multiplicacion: " << multiplicacion << std::endl;

    // División
    double division = static_cast<double>(a) / b;  // Se realiza la conversión para obtener un resultado decimal
    std::cout << "Division: " << division << std::endl;

    // Módulo (resto de la división)
    int modulo = a % b;
    std::cout << "Modulo: " << modulo << std::endl;
      double x = 2.0, y = 3.0;

    // Potencia
    double potencia = std::pow(x, y);
    std::cout << "Potencia: " << potencia << std::endl;

    // Raíz cuadrada
    double raizCuadrada = std::sqrt(x);
    std::cout << "Raiz Cuadrada: " << raizCuadrada << std::endl;

    // Valor absoluto
    double valorAbsoluto = std::abs(-5);
    std::cout << "Valor Absoluto: " << valorAbsoluto << std::endl;

    // Seno y Coseno (en radianes)
    double anguloEnRadianes = 45.0;
    double seno = std::sin(anguloEnRadianes);
    double coseno = std::cos(anguloEnRadianes);
    std::cout << "Seno: " << seno << ", Coseno: " << coseno << std::endl;
    return 0;
}