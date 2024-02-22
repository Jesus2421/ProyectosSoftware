import tkinter as tk

# Lo que cremo es hacerle una broma al usuario como un falso virus, que lo fastidie un poco
def mensaje_virus():
    ventana = tk.Tk()
    ventana.title("Te estoy fastidiando un poco")
    label = tk.Label(ventana, text="Estoy programado para fastidiarte a ti y no dejarte salir.")
    boton = tk.Button(ventana, text="Cerrar", command=ventana if __name__ == "__main__":mensaje_virus()
                      else lambda: ventana.quit())
    label.pack()
    boton.pack()
    ventana.mainloop()
    if __name__ == "__main__":
        mensaje_virus()

