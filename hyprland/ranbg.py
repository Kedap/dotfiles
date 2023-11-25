#!/bin/python3

import pathlib
import random
from datetime import datetime
# import os


def escanear(ruta):
    archivos = pathlib.Path(ruta).iterdir()
    fondos = []
    for archivo in archivos:
        if archivo.suffix == ".jpg" or archivo.suffix == ".png":
            fondos.append(archivo)

    fondo = random.choice(fondos)
    return fondo


ahora = datetime.now()
hora = int(ahora.strftime("%H"))
fondos = "/home/d4n/Wallpapers/"
if hora >= 8 and hora <= 18:
    fondos = fondos + "diurno"
else:
    fondos = fondos + "nocturno"

# foto = "swaybg -i %s -m fill" % escanear(fondos)
# foto = "swaymsg output * bg %s fill" % escanear(fondos)
# os.system(foto)
print(escanear(fondos))
