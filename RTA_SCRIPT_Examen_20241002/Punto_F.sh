#!/bin/bash

IP_PUBLICA=$(curl -s ifconfig.me)

HASH=$(sudo cat /etc/shadow | grep 'osboxes' | awk -F: '{print $2}')

USER=$(whoami)

cd /home/repogit/UTNFRA_SO_1P2C_2024_Abal

REPO_URL=$(git remote get-url origin)


echo "Mi IP Publica es: $IP_PUBLICA" > /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Abal/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt
echo "Mi usuario es: $USER" >> /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Abal/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt
echo "El Hash de mi Usuario es: $HASH" >> /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Abal/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt
echo "La URL de mi repositorio es: $REPO_URL" >> /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Abal/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt

echo "Archivo Filtro_Avanzado generado."
