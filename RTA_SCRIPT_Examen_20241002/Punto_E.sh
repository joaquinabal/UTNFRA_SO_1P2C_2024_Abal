#!/bin/bash

INFO_MEMORIA=$(sudo grep 'MemTotal' /proc/meminfo)
echo "Memoria RAM: $INFO_MEMORIA" > /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Abal/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt


CHASSIS_INFO=$(sudo dmidecode -t chassis | grep 'Manufacturer')
echo "Informacion de Chassis: $CHASSIS_INFO" >> /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Abal/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt

echo "Archivo de Filtro Basico Creados"
