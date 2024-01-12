#Python es un lenguaje orientado a objeto
# es un paradigma que ha ganado una gran popularidad en los últimos años debido a su capacidad para crear aplicaciones,
# más robustas, flexibles y fáciles de mantener. Esta metodología de desarrollo se basa en la idea de que los programas,
#se pueden organizar como una colección de objetos interconectados.
# Definición de una Objeto en Python
class Coche:
    def __init__(self, marca, modelo):
        self.marca = marca
        self.modelo = modelo

    def obtener_info(self):
        return f"Coche: {self.marca} {self.modelo}"

# Creación de una instancia (objeto) de la clase Coche
mi_coche = Coche(marca="Toyota", modelo="Corolla")

# Acceso a los atributos y llamada a un método del objeto
print(mi_coche.marca)  # Imprime: Toyota
print(mi_coche.obtener_info())  # Imprime: Coche: Toyota Corolla