#!/bin/bash

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

sudo useradd -m -s /bin/bash -c "usuario p1c2_2024_A1" -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print$2}')" -G p1c2_2024_gAlumno p1c2_2024_A1 
sudo useradd -m -s /bin/bash -c "usuario p1c2_2024_A2" -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print$2}')" -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -c "usuario p1c2_2024_A3" -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print$2}')" -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -c "usuario p1c2_2024_P1" -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print$2}')" -G p1c2_2024_gProfesores p1c2_2024_P1

sudo chown p1c2_2024_A1:p1c2_2024_gAlumno /home/osboxes/Examenes-UTN/alumno_1
sudo chmod 750 /home/osboxes/Examenes-UTN/alumno_1

sudo chown p1c2_2024_A2:p1c2_2024_gAlumno /home/osboxes/Examenes-UTN/alumno_2
sudo chmod 760 /home/osboxes/Examenes-UTN/alumno_2

sudo chown p1c2_2024_A3:p1c2_2024_gAlumno /home/osboxes/Examenes-UTN/alumno_3
sudo chmod 700 /home/osboxes/Examenes-UTN/alumno_3

sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /home/osboxes/Examenes-UTN/profesores
sudo chmod 775 /home/osboxes/Examenes-UTN/profesores

sudo -u p1c2_2024_A1 bash -c 'whoami > /home/osboxes/Examenes-UTN/alumno_1/validar.txt' 
sudo -u p1c2_2024_A2 bash -c  "whoami > /home/osboxes/Examenes-UTN/alumno_2/validar.txt" 
sudo -u p1c2_2024_A3 bash -c "whoami > /home/osboxes/Examenes-UTN/alumno_3/validar.txt" 
sudo -u p1c2_2024_P1 bash -c "whoami > /home/osboxes/Examenes-UTN/profesores/validar.txt"     
