#!/bin/python3

import pathlib
from os.path import exists
import os


def escanear(pregunta):
    archivos = pathlib.Path(".").iterdir()
    reporte = {}

    for fichero in archivos:
        if fichero.suffixes == []:
            continue

        pinfectado = fichero.name.split(".exe")[0]
        if fichero.suffixes[-1] == ".exe" and exists(pinfectado):
            if pregunta:
                print(
                    "\n"
                    + f"{fichero} contamina a {pinfectado}\n({fichero} -> {pinfectado})"
                )
                r = input("Desea agregarlo a lista de eliminacion? [S/n]: ")
                if r.lower() == "s":
                    reporte[fichero.name] = pinfectado
                    print(pinfectado, "se agrego a la lista")
            else:
                reporte[fichero.name] = pinfectado

    return reporte


def main():
    print("Inicando escaneo...")
    lista = escanear(False)
    eliminar = []
    print("Corrupto -> a recuperar\n" + "=" * 20 + "\n")
    for llave in lista:
        print(f"{llave} -> {lista[llave]}")
        eliminar.append(llave)

    r = input("COMENZAR A ELIMINAR? [S/n]: ")
    if r.lower() != "s":
        print("\n" * 2)
        lista = escanear(True)
        print("\n" * 5)
        print("Corrupto -> a recuperar\n" + "=" * 20 + "\n")
        for llave in lista:
            print(f"{llave} -> {lista[llave]}")
            eliminar.append(llave)

        r = input("COMENZAR A ELIMINAR? [S/n]: ")
        if r.lower != "s":
            exit(0)

    print("Borrando archivos...")
    for exes in eliminar:
        os.remove(exes)

    print("Se borraron los archivos!")
    print("Creando archivo de recuperacion...")
    if exists("picame.bat"):
        os.remove("picame.bat")
    recuperacion = open("picame.bat", "x")
    recuperacion.write("attrib -r -a -s -h *.* /S /D\ndel picame.bat")
    recuperacion.close()
    print("Se creo el archivo de recuperacion!")


main()