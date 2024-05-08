# Supogamos que queremos imprimir la siguente secuencia de numeros con una estrutura de triangulo
#        1
#      2 3
#    4 5 6
# 7 8 9 10
# Como puedes hacer eso?
# Cree un programa Pattern.py que imprima este patrón exactamente como se muestra.
# Es probable que esto requiera algo de prueba y error, ¡pero inténtalo!
def print_pattern(n):
    num = 1  # Inicializar el número a imprimir en 1
    for i in range(1, n + 1):
        # Imprimir espacios en blanco según la posición para obtener el patrón de triángulo
        print(" " * (n - i), end="")
        for j in range(i):
            print(num, end=" ")  # Imprimir el número actual
            num += 1  # Incrementar el número para la siguiente iteración
        print()  # Cambiar de línea después de imprimir cada fila
print_pattern(4)  # Llamar a la función con n=4 para imprimir el patrón deseado
