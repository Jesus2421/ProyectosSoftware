# Algoritmo que genera una palabra tecleando letras al azar

Pseudocódigo que genera una palabra tecleando letras al azar, almacenando cada letra hasta que se pulse una tecla específica (por ejemplo, la tecla "Enter") para finalizar la entrada y formar una palabra.

#Pseudocódigo 
```ALGORITMO Algoritmo_Genetico
    // Parámetros del algoritmo
    Inicializar población de palabras aleatorias
    Generaciones = 1000 // Número máximo de iteraciones
    TamañoPoblacion = 100 // Cantidad de palabras por generación
    TasaMutacion = 0.01  // Probabilidad de mutación por letra

    // Entrada del usuario
    IMPRIMIR "Introduce una palabra"
    palabraObjetivo = LEER_PALABRA()

    // Bucle principal del algoritmo genético
    PARA cada generación DESDE 1 HASTA Generaciones HACER
        // Evaluar la aptitud (fitness) de cada palabra en la población
        PARA cada palabra en la población HACER
            fitness = CalcularAptitud(palabra, palabraObjetivo)
        FIN PARA

        // Verificar si se ha encontrado la palabra correcta
        SI alguna palabra tiene fitness perfecto ENTONCES
            IMPRIMIR "Palabra encontrada: " + palabra
            TERMINAR ALGORITMO

        // Seleccionar las mejores palabras (con mejor fitness)
        poblacionSeleccionada = SeleccionarMejores(poblacion)

        // Crear una nueva generación con crossover y mutación
        nuevaGeneracion = []
        MIENTRAS tamaño(nuevaGeneracion) < TamañoPoblacion HACER
            padre1, padre2 = SeleccionarPadres(poblacionSeleccionada)
            hijo = Crossover(padre1, padre2)
            hijo = Mutacion(hijo, TasaMutacion)
            AÑADIR hijo a nuevaGeneracion
        FIN MIENTRAS

        // Reemplazar la población antigua con la nueva generación
        poblacion = nuevaGeneracion
    FIN PARA

    IMPRIMIR "No se encontró la palabra después de " + Generaciones + " generaciones."
FIN_ALGORITMO

```
# Podemos usar este algoritmo como modelo para una inteligencia artificial (IA) completa
Los algoritmos genéticos (GA) son útiles en muchos problemas de optimización y búsqueda en el campo de la IA. Aunque no son directamente "inteligencia general" como los sistemas que buscan imitar el razonamiento humano, los GA pueden ser una parte clave de un sistema de IA completo.


