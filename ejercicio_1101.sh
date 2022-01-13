#!/bin/bash 

#Nos redireccionaremos a la carpeta sandbox
cd ../CSB/unix/sandbox
pwd

#Literal 2 
echo ¿Cuál es el tamaño del archivo Marra2014_data.fasta?
a=`wc -l ../data/Marra2014_data.fasta | cut -d " " -f 1`
b=`head -n 1 ../data/Marra2014_data.fasta | grep -o " " | wc -l`

echo Número de filas $a
echo Número de columnas $b

 


