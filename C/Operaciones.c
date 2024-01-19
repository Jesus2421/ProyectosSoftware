// Vamos ha ver la operaciones basica en C
#include <stdio.h>
int main() {
    int num1 = 5;
    int num2 = 8;
    float x = 5.2;
    float y = 6.2;
    double z =99.9;
    long int az = 200;
    printf("La suma de %d + %d = %d\n", num1, num2, num1 + num2);
    printf("La división de %.2f / %.2f = %.2f\n", x, y, x / y);
    printf("El módulo es: %d\n", (int)x % (int)y);  // Se convierten x e y a enteros antes de calcular el módulo
    printf("La multiplicación es: %.3f * %.3f = %.3f\n", z, y, z * y / x);
    return 0;
}