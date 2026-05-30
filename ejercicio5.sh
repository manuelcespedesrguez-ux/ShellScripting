# Crea un script que:
# Pida una palabra.
# Busque esa palabra en todos los .txt de la carpeta.
# Muestre:
# en qué archivos aparece
# cuántas veces aparece en total
# Si no aparece, mostrar mensaje adecuado.
# Ejemplo
# Introduce palabra: error
# Encontrado en:
# logs.txt → 4 veces
# sistema.txt → 2 veces
# Total: 6 coincidencias
# 💡 Usa:
# grep -c
# for
# variables acumuladoras


# !/usr/bin/env bash
set -Eeuo pipefail

read -p "Introduce la palabra que quieres buscar: " palabra

total=0
encontrado=false

echo 


for archivo in *.txt; do

    [[ -f "$archivo" ]] ||  continue

    count=$(grep -o "$palabra" "$archivo" | wc -l || echo 0)

    if [[ "$count" -gt 0 ]] then 
        echo "$archivo -> $count veces"
        total=$((total + count))
        encontrado=true
    fi
done

if [[ "$encontrado" == true ]]; then 
    echo "Encontrado en: " archivo
    echo "Total: $total coincidencias"
else 
    echo "La palabra '$palabra' no se encontró en ningún archivo"
fi 
