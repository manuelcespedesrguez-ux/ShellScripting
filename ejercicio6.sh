# Crea un script simple de tareas usando funciones
# El script debe permitir:
# 1) Añadir tarea
# 2) Listar tareas
# 3) Completar tarea
# 4) Salir
# Requisitos
# Las tareas se guardarán en tareas.txt
# Las completadas se moverán a completadas.txt
# Usa funciones separadas:
# agregar_tarea
# listar_tareas
# completar_tarea
# Usa:
# read
# funciones
# arrays o archivos
# while

# !/usr/bin/env bash
set -Eeuo pipefail

function addTareas (){
    read -p "Ingrese la tarea: " tarea
    echo "${tarea}" >> tareas.txt
}
function listarTareas(){    
    if [[ ! -f tareas.txt ]]; then
        echo "No hay tareas pendientes"
        return
    fi    
}
function completarTareas() {
    if [[ ! -f tareas.txt ]]; then
        echo "No hay tareas pendientes"
        return
    fi

    read -p "Ingrese el numero de la tarea a completar: " numTarea
    tarea=$(sed "${numTarea}q;d" tareas.txt)

    if [[ -z $tarea ]]; then
        echo "Tarea no encontrada"
        return
    fi

    echo "${tarea}" >> completadas.txt
    sed -i "${numTarea}d" tareas.txt
}

echo "1) Añadir tarea"
echo "2) Listar tarea"
echo "3) Completar tarea"
echo "4) Salir"
read -p "Elige una opción: " opción

case $opcion in 
    1) addTarea
    ;;
    2) ListarTarea
    ;;
    3) completarTarea
    ;;
    4) echo "Adios"
    exit
    ;;
    *) 
    echo "Opción inválida"
    ;;
esac