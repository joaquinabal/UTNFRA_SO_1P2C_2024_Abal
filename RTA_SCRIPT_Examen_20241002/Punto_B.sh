#!/bin/bash

#Variables

DISK="/dev/sdc"


#Particionamiento

echo "Particionando en 10 a $DISK"

fdisk $DISK <<EOF
n
p


+1000MB

n
p


+1000MB

n
p


+1000MB

n
e


n
l

+1000MB

n
l

+1000MB

n
l

+1000MB

n
l

+1000MB

n
l

+1000MB

n
l

+1000MB

n
l

+1000MB

w
EOF

echo "Particiones creadas"
echo 
echo "Formateando Particiones"

echo "osboxes.org" | sudo -S mkfs -t ext4 "${DISK}1"
sudo mkfs -t ext4 "${DISK}2"
sudo mkfs -t ext4 "${DISK}2"
sudo mkfs -t ext4 "${DISK}3"
sudo mkfs -t ext4 "${DISK}5"
sudo mkfs -t ext4 "${DISK}6"
sudo mkfs -t ext4 "${DISK}7"
sudo mkfs -t ext4 "${DISK}8"
sudo mkfs -t ext4 "${DISK}9"
sudo mkfs -t ext4 "${DISK}10"
sudo mkfs -t ext4 "${DISK}11"

echo "Particiones Formateadas"
echo
echo "Montando Particiones"

sudo mount "${DISK}1" /home/osboxes/Examenes-UTN/alumno_1/parcial_1
sudo mount "${DISK}2" /home/osboxes/Examenes-UTN/alumno_1/parcial_2
sudo mount "${DISK}3" /home/osboxes/Examenes-UTN/alumno_1/parcial_3
sudo mount "${DISK}5" /home/osboxes/Examenes-UTN/alumno_2/parcial_1
sudo mount "${DISK}6" /home/osboxes/Examenes-UTN/alumno_2/parcial_2
sudo mount "${DISK}7" /home/osboxes/Examenes-UTN/alumno_2/parcial_3
sudo mount "${DISK}8" /home/osboxes/Examenes-UTN/alumno_3/parcial_1
sudo mount "${DISK}9" /home/osboxes/Examenes-UTN/alumno_3/parcial_2
sudo mount "${DISK}10" /home/osboxes/Examenes-UTN/alumno_3/parcial_3
sudo mount "${DISK}11" /home/osboxes/Examenes-UTN/profesores

echo $?

echo "Particiones Montadas"
    




