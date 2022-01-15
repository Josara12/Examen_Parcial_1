#!/bin/bash
#Primero nos redirecciónamos a la carpeta sandbox 
cd ../CSB/unix/sandbox 
pwd 

echo Escribe un script, para un archivo CSV y un número de columna dados, imprima 
echo El nombre de la columna correspondiente
cut -d ',' -f 10 ../data/Buzzard2015_data.csv | head -1 
#cut -d va a extraer los campos separados por el delimitador ',' de la columna número 10
#head va imprimir la primera línea del archivo 

echo El número de valores distintos en la columna 
cut -d ',' -f 10 ../data/Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l
#sort ordena los contenidos de un archvivo 
#tail -n +2 va a tomar desde la fila número 2 hasta la última fila 
#uniq identifica los elementos únicos 
#wc -l va a leer cada línea de esta columna 

echo El valor mínimo 
cut -d ',' -f 10 ../data/Buzzard2015_data.csv | tail -n +2 | sort -r | head -n 1
#sort -r ordena del menos hacia el mayor
echo El valor máximo
cut -d ',' -f 10 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1
#sort -n va a ordenar los números 
#tail -n 1 va a tomar la última línea del documento
 


 




