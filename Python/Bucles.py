# En este ejercicio vamos a hacer un ciclo for y while en python
# para ver como se hace he implementalo en futuros proyectos.

# Solisitamos N entradas 
N = int(input("¿Cuantas entradas son?:"))
print("\n Dijistes que son:",N," entradas")

#Iniciamos el ciclo For
for i in range(0,N):
    print("Estamos en la iteracion: ",i)
    entrada=input("Ingrese un valor: ")
    print("Ingresastes: ", entrada)

#Inciciamos ciclo While
entrada2 = int(input("Ingrese un valor. 0 para salir:"))
while(entrada2 != 0):
    entrada2=input("Ingrese un valor. 0 para salir:")
print("Fin")