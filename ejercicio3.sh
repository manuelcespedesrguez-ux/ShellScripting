# Crea un script que:
# Recorra todos los archivos de la carpeta actual
# Muestre: 
# Si es directorio / si es archivo / cuente cuantos archivos y carpetas hay
# !/usr/bin/env bash
set -Eeuo pipefail
contArchivos=0
contDirectorios=0

for elemento in *; do
    
    if [[ -f $elemento ]]; then
        ((++contArchivos))
    fi

    if [[ -d $elemento ]]; then
        ((++contDirectorios))
    fi

done

echo
echo "Total de archivos ${contArchivos}"
echo "Total de directorios ${contDirectorios}"