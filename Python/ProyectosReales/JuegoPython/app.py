import tkinter as tk
import random

class VentanaInterfaz:
    def __init__(self, titulo, ancho, alto, laberinto):
        self.ventana = tk.Tk()
        self.ventana.title(titulo)
        self.ventana.geometry(f"{ancho}x{alto}")
        self.canvas = tk.Canvas(self.ventana, width=ancho, height=alto)
        self.canvas.pack()
        self.laberinto = laberinto

    def dibujar_laberinto(self):
        celda_ancho = self.canvas.winfo_width() // self.laberinto.ancho
        celda_alto = self.canvas.winfo_height() // self.laberinto.alto

        for fila in range(self.laberinto.alto):
            for columna in range(self.laberinto.ancho):
                x1 = columna * celda_ancho
                y1 = fila * celda_alto
                x2 = x1 + celda_ancho
                y2 = y1 + celda_alto

                if self.laberinto.matriz[fila][columna] == 1:
                    self.canvas.create_rectangle(x1, y1, x2, y2, fill="black")
                else:
                    self.canvas.create_rectangle(x1, y1, x2, y2, fill="white")

        self.ventana.mainloop()

class Laberinto:
    def __init__(self, ancho, alto):
        self.ancho = ancho
        self.alto = alto
        self.matriz = self.generar_laberinto()

    def generar_laberinto(self):
        matriz = [[0] * self.ancho for _ in range(self.alto)]

        for fila in range(self.alto):
            for columna in range(self.ancho):
                if random.random() < 0.3:  # Probabilidad de que haya una pared en una celda
                    matriz[fila][columna] = 1

        return matriz

# Ejemplo de uso
laberinto = Laberinto(10, 10)
ventana = VentanaInterfaz("Laberinto", 400, 400, laberinto)
ventana.dibujar_laberinto()

