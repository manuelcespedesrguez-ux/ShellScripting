# Crea un script que:
# Muestre un menu usando case
# 1) Suma
# 2) Resta
# 3) Multiplicar
# 4) Dividir
# 5) Salir
# Pida dos números / Realice la operación seleccionada y permita repetir hasta elegir "Salir"
# !/usr/bin/env bash
set -Eeuo pipefail

while [[ true ]]; do
    
    echo "1) Suma"
    echo "2) Resta"
    echo "3) Multiplicación"
    echo "4) División"
    echo "5) Salir"

    read -p "Elige una opción: " opcion 

    if [[ $opcion -eq 5 ]]; then
        echo "Adios"
        exit
    fi

    read -p "Introduce el primer número: " num1
    read -p "Introduce el segundo númmero: " num2

    case $opcion in 
        1) echo "$((num1+num2))"
        ;;
        2) echo "$((num1-num2))"
        ;;
        3) echo "$((num1*num2))"
        ;;
        4) echo "$((num1/num2))"
        ;;
        *) echo "Opción no válida"
        ;;
    esac
done