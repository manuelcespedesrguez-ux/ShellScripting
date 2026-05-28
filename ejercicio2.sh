# Pida un número al usuario
# Muestre los números desde 1 hasta ese numero usando for
# Si es menor o igual que 0 mostramos un error
# !/usr/bin/env bash
set -Eeuo pipefail
read -p "Dame un número " numero

if [[ $numero -le 0 ]]; then
    echo "ERROR: El número debe ser mayor que 0" 

    for ((i=1; i<=numero; i++)); do
        echo "${i}"
    done
    
fi