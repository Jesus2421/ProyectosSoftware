# Vamos Crear nuestra interfaz hombre-maquina
#Usaremos una tenica conocida como bolsa de palabras
#la variable de entrada sera la  pregunta del usuario.
# le pedimos a usuario que haga una pregunta por teclado.
import gensim.models
from gensim.models import Word2Vec

pregunta=input("")
corpus = [
    pregunta.lower().split()  # Usamos la pregunta del usuario como parte del corpus
]
# Entrenamos el modelo Word2Vec
modelo_word2vec = Word2Vec(corpus, vector_size=100, window=5, min_count=1, workers=4)

# Mostramos las representaciones vectoriales de las palabras en la pregunta del usuario
print("Representaciones vectoriales de las palabras en la pregunta:")
for palabra in pregunta.lower().split():
    vector = modelo_word2vec.wv[palabra]
respuestas = {
    "saludo": "Hola Señor, En que le puedo ayudar hoy",
    "Presentacion": "Soy hamilton, su aistente virtual personal",
    "despedida": "¡Hasta luego Señor! Me pondre en modo ahorro de energia",
    "afirmacion": "desde luego señor iniciare el proceso",
    "negativa":"Señor no puedo realizar esa accion",
    "¡Eureka!": "Interesante señor en contre la solucion",
    "discupa" :  "Lo sentimos señor, No tenemos  disponibilidad en ese momento",
    "Molesto" :  "Me niego a hacer eso",
    "Comprensión": "Entiendo Señor me pondre el la tarea",
    "Situación-inapropiada": "Voy a ignorar eso"
}

# Definimos una función para encontrar la respuesta adecuada
def encontrar_respuesta(pregunta, respuestas, modelo_word2vec):
    # Convertimos la pregunta a minúsculas y la tokenizamos
    tokens = pregunta.lower().split()

    # Inicializamos una lista para almacenar las palabras similares
    palabras_similares = []

    # Obtenemos las palabras similares a cada palabra en la pregunta
    for palabra in tokens:
        if palabra in modelo_word2vec.wv:
            # Obtenemos la palabra más similar
            palabra_similar = modelo_word2vec.wv.similar_by_word(palabra)[0][0]
            palabras_similares.append(palabra_similar)
    
    # Buscamos si alguna palabra similar está en el diccionario de respuestas
    for palabra_similar in palabras_similares:
        if palabra_similar in respuestas:
            return respuestas[palabra_similar]

    # Si no se encontró ninguna respuesta, devolvemos un mensaje predeterminado
    return "Lo siento, no puedo responder a esa pregunta."

# Pedimos al usuario que haga una pregunta
pregunta_usuario = input("Haz una pregunta: ")

# Encontramos y mostramos la respuesta
respuesta = encontrar_respuesta(pregunta_usuario, respuestas, modelo_word2vec)
print("Respuesta:", respuesta)