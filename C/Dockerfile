# Establecer la imagen base
FROM gcc:latest

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar el código fuente de tu aplicación al directorio de trabajo
COPY . .

# Compilar el código en el contenedor
RUN gcc -o mi_programa mi_programa.c

# Ejecutar el programa al iniciar el contenedor
CMD ["./Holamundo.c"]
