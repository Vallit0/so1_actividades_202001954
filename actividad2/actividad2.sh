#!/bin/bash

# Define la variable GITHUB_USER (esto debería ser establecido antes de ejecutar el script)
GITHUB_USER=${GITHUB_USER:-"vallit0"}

# Consulta a la API de GitHub
response=$(curl -s https://api.github.com/users/$GITHUB_USER)

# Procesa la respuesta para obtener los datos necesarios
user_name=$(echo $response | jq -r '.login')
user_id=$(echo $response | jq -r '.id')
account_creation_date=$(echo $response | jq -r '.created_at')

# Verifica si los datos se obtuvieron correctamente
if [[ -z "$user_name" || -z "$user_id" || -z "$account_creation_date" ]]; then
    echo "No se pudo obtener la información del usuario de GitHub."
    exit 1
fi

# Imprime el mensaje
echo "Hola $user_name. User ID: $user_id. Cuenta fue creada el: $account_creation_date."

# Crea el directorio de logs y el archivo de log
log_dir="/tmp/$(date +%F)"
mkdir -p $log_dir
log_file="$log_dir/saludos.log"

# Guarda el mensaje en el archivo de log
echo "Hola $user_name. User ID: $user_id. Cuenta fue creada el: $account_creation_date." >> $log_file


