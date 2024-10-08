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
    
echo "UUID=b256d268-953c-4298-a053-6220837fc824 /home/osboxes/Examenes-UTN/alumno_1/parcial_2 ext4 default 0 2
UUID=affd23b1-4534-4ced-81bc-7c5c204cd04c /home/osboxes/Examenes-UTN/profesores ext4 default 0 2
UUID=0fef78cb-addc-4e01-b1e6-e404dfaad1b7 /home/osboxes/Examenes-UTN/alumno_3/parcial_2 ext4 default 0 2
UUID=94093a17-5b1f-41ac-8566-aaeb618e4404 /home/osboxes/Examenes-UTN/alumno_2/parcial_3 ext4 default 0 2
UUID=50fefd72-bc4c-4147-a9d7-2d4ba4d3ba58 /home/osboxes/Examenes-UTN/alumno_2/parcial_1 ext4 default 0 2
UUID=4a1f193a-2a01-4bcf-8493-1d4a617d5370 /home/osboxes/Examenes-UTN/alumno_1/parcial_3 ext4 default 0 2
UUID=2daf9c54-39b9-4241-8f43-d2a7c9bf2991 /home/osboxes/Examenes-UTN/alumno_1/parcial_1 ext4 default 0 2
UUID=a8da3647-cc26-46e9-8839-4f00da861c4e /home/osboxes/Examenes-UTN/alumno_3/parcial_3 ext4 default 0 2
UUID=5c4a0b5a-ab51-4c70-a16d-8885381251b1 /home/osboxes/Examenes-UTN/alumno_3/parcial_1 ext4 default 0 2
UUID=f28b5fdf-dc4b-45db-89cb-96124e090883 /home/osboxes/Examenes-UTN/alumno_2/parcial_2 ext4 default 0 2" | sudo tee -a /etc/fstab




