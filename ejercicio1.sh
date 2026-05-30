# Crea un script que pida el nombre del usuario
# Muestre un saludo personalizado y cuantos caracteres tiene el nombre usando ${#VARIABLE}.

# !/usr/bin/env bash
set -Eeuo pipefail

# echo "Dame tu nombre"
# read nombre 
read -p "Dame tu nombre: " nombre
# echo "Que tal estas $nombre"
echo "Que tal estas ${nombre}"
echo "Tu nombre tiene ${#nombre} caracteres"