import math
#Operaciones Aritmeticas Basicas
numero = 2
numerodecimal = 2.5
suma= numero + 10
suma1=numerodecimal+10.4
print("Suma de enteros= ",suma)
print("Suma de decimales= ",suma1)
resta=numero-3
resta1=numerodecimal-7.5
print("resta de enteros= ",resta)
print("resta de decimales= ",resta1)
multi=numero*2
multi1=numero*0.5
print("Multiplicacion de enteros= ",multi)
print("Multiplicacion de decimales= ",multi1)
# como en cuelquier lengujes podemos obtener:
#Cociente o resto segun lo que necesitemos
#Cociente
divi=numero/4
divi1=numerodecimal/2
print("Divicion de enteros= ",divi)
print("Division de decimales= ",divi1)
#resto
resto=numero%4
resto1=numerodecimal%2
print("Resto de enteros= ",resto)
print("resto de decimales= ",resto1)
#La función integrada divmod(x, y) 
#devuelve una tupla formada por el cociente y el resto de la división de x entre y.
mod=divmod(13, 4)
print("Divicion de enteros= ",divi)
print("Tupla de la divicion 13 y 4= ", mod)
#Potencias y raíces
pote = 2 **3
raiz= 10 ** -4
print("Potencia= ", pote)
print("Raiz= ", raiz)
#redondear
redondo=round(3.14159265359)
print("Numero pi redondeado= ",redondo)
#Valor adsoluto
valor = abs(-2)
print("Valor adsuluto de -2= ",valor)
#La función integrada max() calcula el valor máximo de un conjunto de valores
Maximo = max(4, 5, -2, 8, 3.5, -10)
print("EL numero maximo de 4, 5, -2, 8, 3.5, -10= ",Maximo)
#La función integrada min() calcula el valor mínimo de un conjunto de valores
Minimo = min(4, 5, -2, 8, 3.5, -10)
print("EL numero minimo de 4, 5, -2, 8, 3.5, -10= ",Minimo)
#La función integrada sum() calcula la suma de un conjunto de valores.
sumatotal=sum((1, 2, 3, 4, 5))
print("La suma de 1, 2, 3, 4, 5 = ", sumatotal)
#La función integrada sorted() ordena un conjunto de valores
ordena=sorted((10, 2, 8, -3, 6))
print("Ordene los numero 10, 2, 8, -3, 6= ", ordena)
#Operaciones trigonometrica
angulo = 30
print("el angulo= ", angulo)
seno = math.sin(angulo)
cos = math.cos(angulo)
tan = math.tan(angulo)
print("Seno= ", seno)
print("Coseno= ", cos)
print("Tangente= ", tan)