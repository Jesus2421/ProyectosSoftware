# En los ejercicios anteriores hemos visto dos bibliotecas de Python
import math  # para operaciones matemáticas complejas
import sys   # que guarda las funciones del sistema, como terminar procesos, entre otras.
# Pero estas no son las únicas que existen.
# Entre las bibliotecas de Python se destacan dos tipos: las estándar, que vienen con el lenguaje y son fáciles de implementar,
# y las que debemos instalar nosotros adicionamente.
# Aquí solo repasaremos las más útiles, pero si desea más información puede visitar esta página:
# https://docs.python.org/es/3/library/index.html

# Bibliotecas estándar de Python
import os    # para interactuar con el sistema operativo, como leer o escribir en el sistema de archivos
import time  # para medir el tiempo, realizar pausas y trabajar con fechas
import random  # para generar números aleatorios
import urllib.request  # para trabajar con URLs y realizar solicitudes web
print(sys.version)  # muestra la versión de Python que estamos utilizando

# Ejemplo básico de uso de una biblioteca
# Obtener el directorio actual usado el import os
directorio_actual = os.getcwd()
print("Directorio actual:", directorio_actual)
# Crear un nuevo directorio
nuevo_directorio = "nuevo_directorio"
os.mkdir(nuevo_directorio)
print("Se creó un nuevo directorio:", nuevo_directorio)
# Eliminar el directorio creado
os.rmdir(nuevo_directorio)
print("Se eliminó el directorio:", nuevo_directorio)
#import time
# Obtener la hora actual
hora_actual = time.strftime("%H:%M:%S")
print("Hora actual:", hora_actual)
# Pausa de 2 segundos
print("Esperando 2 segundos...")
time.sleep(2)
print("Pausa completada.")
# Generar un número aleatorio entre 1 y 10
numero_aleatorio = random.randint(1, 10)
print("Número aleatorio:", numero_aleatorio)
#import urllib.request 
# Descargar una página web
url = "https://www.ejemplo.com"
respuesta = urllib.request.urlopen(url)
contenido = respuesta.read().decode('utf-8')