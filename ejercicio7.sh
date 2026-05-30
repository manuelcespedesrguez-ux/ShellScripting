# Crea un script avanzado que:
# Muestre:
# uso de CPU
# memoria libre
# espacio libre en disco
# Guarde un log con fecha y hora.
# Permita elegir opciones mediante menú.
# Tenga funciones separadas para cada comprobación.
# Si el disco supera el 90% de uso:
# mostrar alerta.
# Menú
# 1) Ver CPU
# 2) Ver memoria
# 3) Ver disco
# 4) Generar reporte completo
# 5) Salir
# 💡 Usa:
# df
# free
# top o uptime
# date
# modularización con funciones
# case
# while true

# !/usr/bin/env bash
set -Eeuo pipefail