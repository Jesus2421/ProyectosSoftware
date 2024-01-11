import sys
#Estructuras de control
#las estructuras de control permiten modificar el flujo de la ejecución de un conjunto de instrucciones.

#Condicional if-elif-else
a = 10
b = 30

if a > b:
    print("a es mayor que b")
elif a < b:
    print("a es menor que b")
else:
    print("a es igual a b")

#Control de seleccion
n = 1001

if (-1)**(n) > 0:
    print("El numero es par")
else:
    print("El numero es impar")

#Control de opciones multiples
print("Menu del Programa")
print("1: Produccion")
print("2: Recursos humanos")
print("3: Finanzas")
print("0: Salir")
menu = int(input("Elija una opcion del menu:"))
match menu:
    case 1:
        print("Ha elegido entrar en Produccion")
    case 2:
        print("Ha elegido entrar en Recursos Humanos")
    case 3:
        print("Ha elegido entrar en Finanzas de la empresa")
    case 0:
        sys.exit(0)

        