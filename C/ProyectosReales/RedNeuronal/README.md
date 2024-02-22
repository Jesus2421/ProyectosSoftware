# Perceptrón con Funciones Lógicas en C

Este repositorio contiene la implementación en C de un perceptrón con función escalar que realiza operaciones lógicas básicas como AND, OR, NOT, etc.

## ¿Qué es un Perceptrón?

Un perceptrón es un algoritmo de aprendizaje supervisado de una sola capa. Consiste en una unidad básica que toma varias entradas y produce una única salida. Utiliza una función de activación para determinar si la salida debe ser activada o no.

## Funcionamiento del Perceptrón con Función Escalar

El perceptrón con función escalar realiza operaciones lógicas básicas sobre un conjunto de entradas. Utiliza pesos y umbrales para determinar la salida. La función de activación utilizada es la función escalón, que produce una salida binaria.

## Funciones Implementadas

1. **AND**: Produce una salida verdadera (1) si y solo si todas las entradas son verdaderas.
2. **OR**: Produce una salida verdadera (1) si al menos una de las entradas es verdadera.
3. **NOT**: Produce la negación de la entrada.
1. **NAND**: Produce una salida verdadera (1) si al menos una de las entradas es falsa.
2. **NOR**: Produce una salida verdadera (1) si todas las entradas son falsas.
3. **XOR**:  Produce una salida verdadera (1) si exactamente una de las entradas es verdadera.

## Estructura del Repositorio

- `perceptron.c`: Contiene la implementación del perceptrón en C.
- `README.md`: Este archivo que estás leyendo.

## Uso

1. Compila el archivo `perceptron.c` utilizando un compilador C compatible.
2. Ejecuta el programa resultante.
3. Sigue las instrucciones para realizar las operaciones lógicas deseadas.

## Ejemplo de Uso

```bash
gcc -o perceptron perceptron.c
./perceptron
